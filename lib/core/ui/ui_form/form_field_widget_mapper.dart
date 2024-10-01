import 'package:flutter/material.dart' hide TextField;
import 'package:nuntium/core/ui/ui_form/text_field.dart';
import 'package:nuntium/core/ui/ui_list_tile/export.dart';

class FormFieldWidgetMapper extends StatelessWidget {
  final FormFieldConfig config;

  const FormFieldWidgetMapper({
    required this.config,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return config.when(
      textField: (type, textFieldConfig) => TextField(
        config: textFieldConfig ??
            DefaultFormFieldConfigMapper.getDefaultConfig(type),
      ),
      searchField: (textFieldConfig) => TextField(
        config: textFieldConfig ??
            DefaultFormFieldConfigMapper.getDefaultConfig(FormFieldType.search),
      ),
    );
  }
}
