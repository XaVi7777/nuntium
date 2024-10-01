import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc_models.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  SignInFormState createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  late final UIFormUtils _formUtils;
  final _isFormValidNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _formUtils = UIFormUtils();
  }

  static const _formFields = [
    FormFieldConfig.textField(type: FormFieldType.email),
    FormFieldConfig.textField(type: FormFieldType.password),
  ];

  @override
  void dispose() {
    _isFormValidNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UIForm(
          formKey: _formUtils.formKey,
          formFields: _formFields,
          onChanged: _onChanged,
        ),
        UISpacers.mediumSpacing,
        ValueListenableBuilder<bool>(
          valueListenable: _isFormValidNotifier,
          builder: _submitButtonBuilder,
        ),
      ],
    );
  }

  void _onSubmit(BuildContext context) {
    if (_formUtils.saveAndValidate()) {
      final data = _formUtils.getFormValue();

      context.read<SignInBloc>().add(SignInEvent.signIn(
            SignInMethod.emailWithPassword,
            formData: data,
          ));
    }
  }

  void _onChanged() {
    final isValid = _formUtils.saveAndValidate(focusOnInvalid: false);
    if (_shouldUpdateSubmitButton(isValid)) {
      _isFormValidNotifier.value = isValid;
    }
  }

  Widget _submitButtonBuilder(
    BuildContext context,
    bool isValid,
    Widget? child,
  ) =>
      UIButton(
        text: LocaleKeys.sign_in_sign_in,
        onPressed: isValid ? () => _onSubmit(context) : null,
      );

  bool _shouldUpdateSubmitButton(bool isValid) =>
      isValid != _isFormValidNotifier.value;
}
