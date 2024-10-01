import 'package:flutter/widgets.dart';
import 'package:nuntium/core/ui/ui_form/form_field_config.dart';
import 'package:nuntium/core/ui/ui_form/form_field_widget_mapper.dart';

class UISearch extends StatelessWidget {
  final FormFieldConfig config;

  const UISearch({
    required this.config,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormFieldWidgetMapper(config: config);
  }
}
