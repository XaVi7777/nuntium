import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';
import 'package:nuntium/features/sign_up/presentation/bloc/sign_up_bloc.dart';
import 'package:nuntium/features/sign_up/presentation/bloc/sign_up_bloc_models.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  late final UIFormUtils _formUtils;
  final _isFormValidNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _formUtils = UIFormUtils();
  }

  String get _passwordValue =>
      (_formUtils.formState?.value[FormFieldType.password.toString()] ?? '')
          as String;

  List<FormFieldConfig> get _formFields => [
        const FormFieldConfig.textField(
          type: FormFieldType.username,
        ),
        const FormFieldConfig.textField(
          type: FormFieldType.email,
        ),
        const FormFieldConfig.textField(
          type: FormFieldType.password,
        ),
        FormFieldConfig.textField(
          type: FormFieldType.passwordRepeat,
          config: DefaultFormFieldConfigMapper.getDefaultConfig(
            FormFieldType.passwordRepeat,
          ).copyWith(
            validator: ValidatorMapper.repeatPasswordValidator(
              () => _passwordValue,
            ),
          ),
        ),
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

      context.read<SignUpBloc>().add(SignUpEvent.signUp(
            SignInMethod.emailWithPassword,
            data,
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
        text: LocaleKeys.sign_in_sign_up,
        onPressed: isValid ? () => _onSubmit(context) : null,
      );

  bool _shouldUpdateSubmitButton(bool isValid) =>
      isValid != _isFormValidNotifier.value;
}
