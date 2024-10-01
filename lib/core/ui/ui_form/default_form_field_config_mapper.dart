import 'package:flutter/material.dart';
import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/core/ui/ui_form/icon_mapper.dart';
import 'package:nuntium/core/ui/ui_form/label_mapper.dart';
import 'package:nuntium/core/ui/ui_form/text_field_config.dart';
import 'package:nuntium/core/ui/ui_form/validator_mapper.dart';

class DefaultFormFieldConfigMapper {
  static TextFieldConfig _createTextFieldConfig({
    required FormFieldType type,
    bool obscureText = false,
  }) {
    return TextFieldConfig(
      name: type.toString(),
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: LabelMapper.getLabel(type),
        prefixIcon: IconMapper.getIcon(type),
      ),
      validator: ValidatorMapper.getValidator(type),
    );
  }

  static TextFieldConfig getDefaultConfig(FormFieldType type) {
    switch (type) {
      case FormFieldType.username:
      case FormFieldType.email:
        return _createTextFieldConfig(type: type);
      case FormFieldType.password:
      case FormFieldType.passwordRepeat:
        return _createTextFieldConfig(type: type, obscureText: true);
      case FormFieldType.search:
        return _createTextFieldConfig(type: type);
      default:
        throw UnsupportedError('Unsupported FormFieldType: $type');
    }
  }
}
