import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/section/section_model.dart';
import 'package:nuntium/data/sections/sections_repository.dart';
import 'package:nuntium/domain/interactors/sections/sections_interactor.dart';

@Singleton(as: SectionsInteractor)
class SectionsInteractorImpl implements SectionsInteractor {
  final SectionsRepository _sectionsRepository;

  SectionsInteractorImpl(
    this._sectionsRepository,
  );

  @override
  SectionModel get activeSection => _sectionsRepository.activeSection;
  @override
  set activeSection(SectionModel section) {
    _sectionsRepository.activeSection = section;
  }

  @override
  Stream<List<SectionModel>> get sectionsStream =>
      _sectionsRepository.sectionsStream;

  @override
  List<SectionModel> get sections => _sectionsRepository.sections;

  @override
  Future<Either<Failure, Unit>> fetchSections() =>
      _sectionsRepository.fetchSections();

  @override
  void updateSection(SectionModel updatedSection) {
    _sectionsRepository.updateSection(updatedSection);
  }

  @override
  void dispose() {
    _sectionsRepository.dispose();
  }
}
