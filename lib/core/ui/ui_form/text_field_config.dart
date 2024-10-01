import 'dart:ui' as ui;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/core/ui/ui_form/type_defs.dart';

part 'text_field_config.freezed.dart';

@freezed
class TextFieldConfig with _$TextFieldConfig {               
  const factory TextFieldConfig({
    required String name,
    @Default(InputDecoration()) InputDecoration decoration,
    ValidatorCallback? validator,
    OnChangedCallback? onChanged,
    ValueTransformerCallback? valueTransformer,
    @Default(true) bool enabled,
    OnSavedCallback? onSaved,
    @Default(AutovalidateMode.disabled) AutovalidateMode? autovalidateMode,
    OnResetCallback? onReset,
    FocusNode? focusNode,
    String? restorationId,
    String? initialValue,
    @Default(false) bool readOnly,
    @Default(1) int? maxLines,
    @Default(false) bool obscureText,
    @Default(TextCapitalization.none) TextCapitalization textCapitalization,
    @Default(EdgeInsets.all(20)) EdgeInsets scrollPadding,
    @Default(true) bool enableInteractiveSelection,
    MaxLengthEnforcement? maxLengthEnforcement,
    @Default(TextAlign.start) TextAlign textAlign,
    @Default(false) bool autofocus,
    @Default(true) bool autocorrect,
    @Default(2.0) double cursorWidth,
    double? cursorHeight,
    TextInputType? keyboardType,
    TextStyle? style,
    TextEditingController? controller,
    TextInputAction? textInputAction,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    int? maxLength,
    OnEditingCompleteCallback? onEditingComplete,
    OnSubmittedCallback? onSubmitted,
    List<TextInputFormatter>? inputFormatters,
    Radius? cursorRadius,
    Color? cursorColor,
    Brightness? keyboardAppearance,
    BuildCounterCallback? buildCounter,
    @Default(false) bool expands,
    int? minLines,
    bool? showCursor,
    OnTapCallback? onTap,
    OnTapOutsideCallback? onTapOutside,
    @Default(false) bool enableSuggestions,
    TextAlignVertical? textAlignVertical,
    @Default(DragStartBehavior.start) DragStartBehavior dragStartBehavior,
    ScrollController? scrollController,
    ScrollPhysics? scrollPhysics,
    @Default(ui.BoxWidthStyle.tight) ui.BoxWidthStyle selectionWidthStyle,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    @Default(ui.BoxHeightStyle.tight) ui.BoxHeightStyle selectionHeightStyle,
    Iterable<String>? autofillHints,
    @Default('•') String obscuringCharacter,
    MouseCursor? mouseCursor,
    ContextMenuBuilderCallback? contextMenuBuilder,
    TextMagnifierConfiguration? magnifierConfiguration,
    ContentInsertionConfiguration? contentInsertionConfiguration,
  }) = _TextFieldConfig;
}
