import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/widgets/snackbar_manager/bloc/snackbar_manager_bloc.dart';
import 'package:nuntium/app/widgets/snackbar_manager/bloc/snackbar_manager_bloc_models.dart';
import 'package:nuntium/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/utils/bloc/bloc_utils.dart';
import 'package:nuntium/data/models/export.dart';

class SnackbarManager extends StatelessWidget {
  final Widget child;

  const SnackbarManager({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SnackbarManagerBloc>(
      create: _onCreate,
      child: SrBlocBuilder<SnackbarManagerBloc, SnackbarManagerState,
          SnackbarManagerSR>(
        onSR: _onSingleResult,
        builder: (_, __) => child,
      ),
    );
  }

  SnackbarManagerBloc _onCreate(BuildContext context) {
    return BlocUtils.create<SnackbarManagerBloc, SnackbarManagerEvent>(
      context,
      event: const SnackbarManagerEvent.init(),
    );
  }

  void _onSingleResult(BuildContext context, SnackbarManagerSR singleResult) {
    singleResult.when(
      showMessage: (message) => _showMessage(context, message),
    );
  }

  void _showMessage(BuildContext context, SnackbarMessage message) {
    UIBaseSnackbar.show(
      context: context,
      text: message.message.tr(),
    );
  }
}
