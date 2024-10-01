import 'package:flutter/widgets.dart';
import 'package:nuntium/features/permissions/presentation/bloc/permissions_bloc_models.dart';
import 'package:nuntium/features/permissions/presentation/ui/permissions_content.dart';

class PermissionsStateMapper extends StatelessWidget {
  final PermissionsState permissionsState;

  const PermissionsStateMapper({
    required this.permissionsState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return permissionsState.map(
      empty: (_) => const PermissionsContent(),
    );
  }
}
