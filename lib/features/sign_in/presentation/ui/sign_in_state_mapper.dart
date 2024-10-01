import 'package:flutter/widgets.dart';
import 'package:nuntium/features/sign_in/presentation/bloc/sign_in_bloc_models.dart';
import 'package:nuntium/features/sign_in/presentation/ui/sign_in_content.dart';

class SignInStateMapper {
  static Widget mapState(BuildContext context, SignInState state) {
    return state.map(
      data: (_) => const SignInContent(),
    );
  }
}
