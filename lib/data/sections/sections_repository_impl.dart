import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/app/config/config.dart';
import 'package:nuntium/core/infrastructure/error_handler/error_handler.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/core/storage/database/daos/sections/sections_dao.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/data_sources/local_datasource/drift_data_sources/sections_local_data_source.dart';
import 'package:nuntium/data/models/export.dart';
import 'package:nuntium/data/models/section/section_model.dart';
import 'package:nuntium/data/sections/sections_repository.dart';

@Singleton(as: SectionsRepository)
class SectionsRepositoryImpl implements SectionsRepository {
  final SectionsLocalDataSource _localDataSource;
  final List<SectionModel> _defaultSections;
  final SectionModel _initialSection;
  final StreamManager<List<SectionModel>> _streamManager;
  final ErrorHandler _errorHandler;

  SectionsRepositoryImpl({
    required SectionsDao sectionsDao,
    required Config config,
    required StreamManager<List<SectionModel>> streamManager,
    required ErrorHandler errorHandler,
  })  : _localDataSource = SectionsLocalDataSource(sectionsDao),
        _activeSection = config.defaultActiveSection,
        _defaultSections = config.sections,
        _initialSection = config.defaultActiveSection,
        _streamManager = streamManager,
        _errorHandler = errorHandler;

  SectionModel _activeSection;

  @override
  SectionModel get activeSection => _activeSection;

  @override
  set activeSection(SectionModel section) {
    _activeSection = section;
  }

  @override
  List<SectionModel> get sections => _streamManager.valueOrNull ?? [];

  @override
  Stream<List<SectionModel>> get sectionsStream => _streamManager.getStream();

  @override
  Future<Either<Failure, Unit>> fetchSections() =>
      _errorHandler.execute(_onFetchSections);

  @override
  Future<Either<Failure, Unit>> updateSection(
    SectionModel updatedSection,
  ) =>
      _errorHandler.execute(() => _onUpdateSection(updatedSection));

  @override
  void dispose() {
    _streamManager.dispose();
    _activeSection = _initialSection;
  }

  Future<List<SectionModel>> _getSectionsFromLocalDataSource() async {
    final sections = await _localDataSource.getAll();
    return sections;
  }

  Future<Unit> _onFetchSections() async {
    final sections = await _getSectionsFromLocalDataSource();
    if (sections.isEmpty) {
      await _localDataSource.saveAll(_defaultSections);
      _streamManager.add(_defaultSections);
    } else {
      _streamManager.add(sections);
    }
    return unit;
  }

  Future<Unit> _onUpdateSection(SectionModel updatedSection) async {
    final currentSections = List<SectionModel>.from(sections);
    final updatedSections = currentSections.map((section) {
      if (section.type == updatedSection.type) {
        return updatedSection;
      }
      return section;
    }).toList();
    _streamManager.add(updatedSections);

    await _localDataSource.update(updatedSection);
    return unit;
  }
}
