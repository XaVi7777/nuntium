import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/core/ui/ui_form/text_field_config.dart';

part 'form_field_config.freezed.dart';

@freezed
class FormFieldConfig with _$FormFieldConfig {
  const factory FormFieldConfig.textField({
    required FormFieldType type,
    TextFieldConfig? config,
  }) = TextFormFieldConfig;

  const factory FormFieldConfig.searchField({
    TextFieldConfig? config,
  }) = SearchFieldConfig;
}
