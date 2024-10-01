import 'package:flutter/material.dart';

typedef ValidatorCallback = String? Function(String? value);
typedef OnChangedCallback = void Function(String? value);
typedef OnFormChangedCallback = void Function();
typedef OnEditingCompleteCallback = void Function();
typedef OnResetCallback = void Function();
typedef OnTapOutsideCallback = void Function(PointerDownEvent event);
typedef ValueTransformerCallback = dynamic Function(String? value);
typedef OnSavedCallback = void Function(String? value);
typedef OnSubmittedCallback = void Function(String? value);
typedef OnTapCallback = void Function();
typedef BuildCounterCallback = Widget Function(BuildContext context,
    {required int currentLength,
    required bool isFocused,
    required int? maxLength});
typedef ContextMenuBuilderCallback = Widget Function(
    BuildContext context, EditableTextState state);
typedef OnSubmitCallback = void Function(Map<String, dynamic> formData);
