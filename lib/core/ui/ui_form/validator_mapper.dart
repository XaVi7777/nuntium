import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nuntium/core/ui/ui_form/form_field_type.dart';
import 'package:nuntium/core/ui/ui_form/type_defs.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class ValidatorMapper {
  static const int minUsernameLength = 4;
  static const int maxUsernameLength = 50;
  static const int minPasswordLength = 6;

  static String _localizedError(String key) {
    return key.tr();
  }

  static final Map<FormFieldType, List<FormFieldValidator<String>>>
      _validatorsMap = {
    FormFieldType.username: [
      FormBuilderValidators.required(
        errorText: _localizedError(LocaleKeys.field_required),
      ),
      FormBuilderValidators.minLength(
        minUsernameLength,
        errorText: _localizedError(LocaleKeys.field_has_min_length),
      ),
      FormBuilderValidators.maxLength(
        maxUsernameLength,
        errorText: _localizedError(
          LocaleKeys.field_has_max_length,
        ),
      ),
    ],
    FormFieldType.email: [
      FormBuilderValidators.required(
        errorText: _localizedError(LocaleKeys.field_required),
      ),
      FormBuilderValidators.email(
        errorText: _localizedError(LocaleKeys.field_is_email),
      ),
    ],
    FormFieldType.password: [
      FormBuilderValidators.required(
        errorText: _localizedError(LocaleKeys.field_required),
      ),
      FormBuilderValidators.minLength(
        minPasswordLength,
        errorText: _localizedError(LocaleKeys.field_has_min_length),
      ),
    ],
  };

  static ValidatorCallback? getValidator(FormFieldType type) {
    final validators = _validatorsMap[type];
    if (validators?.isEmpty ?? true) return null;
    if (validators!.length == 1) return validators.first;
    return FormBuilderValidators.compose(validators);
  }

  static FormFieldValidator<String> repeatPasswordValidator(
      String? Function() getPassword) {
    return (value) {
      final password = getPassword() ?? '';
      return FormBuilderValidators.equal<String>(
        password,
        errorText: _localizedError(LocaleKeys.passwords_do_not_match),
      )(value);
    };
  }
}
