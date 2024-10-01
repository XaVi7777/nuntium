import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/section/section_model.dart';

abstract class SectionsInteractor {
  Stream<List<SectionModel>> get sectionsStream;
  List<SectionModel> get sections;

  SectionModel get activeSection;
  set activeSection(SectionModel section);

  void updateSection(SectionModel updatedSection);
  
  Future<Either<Failure, Unit>> fetchSections();

  void dispose();

}
