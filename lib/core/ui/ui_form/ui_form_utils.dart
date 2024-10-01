import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UIFormUtils {
  final GlobalKey<FormBuilderState> _formKey;

  UIFormUtils([GlobalKey<FormBuilderState>? formKey])
      : _formKey = formKey ?? GlobalKey<FormBuilderState>();

  FormBuilderState? get formState => _formKey.currentState;

  bool saveAndValidate({
    bool focusOnInvalid = true,
    bool autoScrollWhenFocusOnInvalid = false,
  }) {
    return formState?.saveAndValidate(
            focusOnInvalid: focusOnInvalid,
            autoScrollWhenFocusOnInvalid: autoScrollWhenFocusOnInvalid) ??
        false;
  }

  void reset() {
    formState?.reset();
  }

  Map<String, dynamic> getFormValue() {
    return formState?.value ?? {};
  }

  GlobalKey<FormBuilderState> get formKey => _formKey;
}
