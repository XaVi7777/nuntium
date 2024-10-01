import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nuntium/core/ui/ui_form/text_field_config.dart';

class TextField extends StatelessWidget {
  final TextFieldConfig config;

  const TextField({
    required this.config,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: config.name,
      decoration: config.decoration,
      validator: config.validator,
      obscureText: config.obscureText,
      onChanged: config.onChanged,
      onEditingComplete: config.onEditingComplete,
      onReset: config.onReset,
      onTapOutside: config.onTapOutside,
    );
  }
}
