import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/core/storage/database/app_database.dart';

part 'section_model.freezed.dart';
part 'section_model.g.dart';

@freezed
class SectionModel with _$SectionModel {
  const SectionModel._();

  const factory SectionModel({
    required String type,
    @Default(false) bool isSelected,
  }) = _SectionModel;

  factory SectionModel.fromJson(Map<String, dynamic> json) =>
      _$SectionModelFromJson(json);

  bool get isHome => type == 'home';
}

extension SectionModelMapper on SectionModel {
  SectionsTableCompanion toCompanion() {
    return SectionsTableCompanion(
      type: drift.Value(type),
      isSelected: drift.Value(isSelected),
    );
  }

  static SectionModel fromDatabase(SectionsTableData data) {
    return SectionModel(
      type: data.type,
      isSelected: data.isSelected,
    );
  }
}
