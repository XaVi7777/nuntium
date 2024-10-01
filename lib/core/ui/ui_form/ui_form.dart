import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/ui/ui_form/form_field_config.dart';
import 'package:nuntium/core/ui/ui_form/form_field_widget_mapper.dart';
import 'package:nuntium/core/ui/ui_form/type_defs.dart';

class UIForm extends StatelessWidget {
  final List<FormFieldConfig> formFields;
  final OnFormChangedCallback? onChanged;
  final AutovalidateMode? autovalidateMode;
  final Map<String, dynamic> initialValue;
  final bool skipDisabled;
  final bool enabled;
  final bool clearValueOnUnregister;
  final bool? canPop;
  final SizedBox separator;
  final MainAxisSize mainAxisSize;
  final GlobalKey<FormBuilderState> formKey;

  const UIForm({
    required this.formFields,
    required this.formKey,
    this.onChanged,
    this.autovalidateMode,
    this.initialValue = const <String, dynamic>{},
    this.skipDisabled = false,
    this.enabled = true,
    this.clearValueOnUnregister = false,
    this.canPop,
    this.separator = const SizedBox(height: 16),
    this.mainAxisSize = MainAxisSize.min,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      onChanged: onChanged, 
      autovalidateMode: autovalidateMode,
      initialValue: initialValue,
      skipDisabled: skipDisabled,
      enabled: enabled,
      clearValueOnUnregister: clearValueOnUnregister,
      canPop: canPop,
      child: Column(
        mainAxisSize: mainAxisSize,
        children: formFields
            .map((config) => FormFieldWidgetMapper(config: config))
            .divide(separator)
            .toList(),
      ),
    );
  }
}
