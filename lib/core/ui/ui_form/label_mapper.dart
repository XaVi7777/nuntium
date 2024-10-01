import 'package:easy_localization/easy_localization.dart';
import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class LabelMapper {
  static const Map<FormFieldType, String> _labelMap = {
    FormFieldType.username: LocaleKeys.sign_up_username,
    FormFieldType.email: LocaleKeys.email,
    FormFieldType.password: LocaleKeys.password,
    FormFieldType.passwordRepeat: LocaleKeys.password_repeat,
    FormFieldType.search: LocaleKeys.search,
  };

  static String? getLabel(FormFieldType fieldType) => _labelMap[fieldType]?.tr();
}
