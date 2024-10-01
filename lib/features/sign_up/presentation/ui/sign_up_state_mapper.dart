import 'package:flutter/widgets.dart';
import 'package:nuntium/features/sign_up/presentation/bloc/sign_up_bloc_models.dart';
import 'package:nuntium/features/sign_up/presentation/ui/sign_up_content.dart';

class SignUpStateMapper {
  static Widget mapState(BuildContext context, SignUpState state) {
    return state.map(
      data: (_) => const SignUpContent( ),
    );
  }
}
