import 'package:injectable/injectable.dart';
import 'package:nuntium/arch/drfit/reference_datasource.dart';
import 'package:nuntium/core/storage/database/daos/export.dart';
import 'package:nuntium/data/models/section/section_model.dart';

@Singleton(as: ReferenceDataSource<SectionModel>)
class SectionsLocalDataSource implements ReferenceDataSource<SectionModel> {
  final SectionsDao _sectionsDao;

  SectionsLocalDataSource(
    this._sectionsDao,
  );

  @override
  Future<List<SectionModel>> getAll() async {
    final sections = await _sectionsDao.getAllSections();
    return sections.map(SectionModelMapper.fromDatabase).toList();
  }

  @override
  Future<void> saveAll(List<SectionModel> items) async {
    final sectionsCompanion =
        items.map((section) => section.toCompanion()).toList();
    await _sectionsDao.updateAllSections(sectionsCompanion);
  }

  @override
  Future<void> update(SectionModel section) async {
    await _sectionsDao.updateSection(section.toCompanion());
  }
}
