import 'package:flutter/widgets.dart';
import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/core/ui/ui_svg_icon/ui_svg_icon.dart';
import 'package:nuntium/generated/assets.gen.dart';

class IconMapper {
  static const double _inputPrefixIconWidth = 20;
  static const double _inputPrefixIconHeight = 16;

  static final Map<FormFieldType, Widget> _iconMap = {
    FormFieldType.username: UISVGIcon(
      assetName: Assets.svgCompiled.user,
      width: _inputPrefixIconWidth,
      height: _inputPrefixIconHeight,
    ),
    FormFieldType.email: UISVGIcon(
      assetName: Assets.svgCompiled.email,
      width: _inputPrefixIconWidth,
      height: _inputPrefixIconHeight,
    ),
    FormFieldType.password: UISVGIcon(
      assetName: Assets.svgCompiled.lock,
      width: _inputPrefixIconWidth,
      height: _inputPrefixIconHeight,
    ),
    FormFieldType.passwordRepeat: UISVGIcon(
      assetName: Assets.svgCompiled.lock,
      width: _inputPrefixIconWidth,
      height: _inputPrefixIconHeight,
    ),
    FormFieldType.search: UISVGIcon(
      assetName: Assets.svgCompiled.search,
      width: _inputPrefixIconWidth,
      height: _inputPrefixIconHeight,
    ),
  };

  static Widget? getIcon(FormFieldType type) => _iconMap[type];
}
