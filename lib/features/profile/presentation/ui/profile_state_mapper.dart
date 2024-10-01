import 'package:flutter/widgets.dart';
import 'package:nuntium/features/profile/presentation/bloc/profile_bloc_models.dart';
import 'package:nuntium/features/profile/presentation/ui/profile_content.dart';
import 'package:nuntium/features/profile/presentation/ui/profile_empty.dart';

class ProfileStateMapper extends StatelessWidget {
  final ProfileState profileState;
  
  const ProfileStateMapper({
    required this.profileState,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return profileState.map(
      data: (state) => ProfileContent(
        state: state,
      ),
      empty: (_) => const ProfileEmpty(),
    );
  }
}
