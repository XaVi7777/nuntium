import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/section/section_model.dart';

abstract class SectionsRepository {
  List<SectionModel> get sections;

  SectionModel get activeSection;
  set activeSection(SectionModel section);
  Stream<List<SectionModel>> get sectionsStream;
  Future<Either<Failure, Unit>> fetchSections();
  Future<Either<Failure, Unit>> updateSection(SectionModel section);

  void dispose();
}
