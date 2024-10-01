import 'package:flutter/material.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/extensions/theme_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/data/models/user/user_model.dart';

class ProfileUserInfo extends StatelessWidget {
  final UserModel user;
  const ProfileUserInfo({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return Row(
      children: [
        UIAvatar(
          child: user.photoURL != null ? UINetworkImage(
            imageUrl: user.photoURL!,
          ) : null,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.displayName,
              style: appTheme.textTheme.bodyMedium,
            ),
            Text(
              user.email,
              style: appTheme.textTheme.descriptionSmall,
            ),
          ],
        ),
      ].divide(const SizedBox(
        width: 24,
      )),
    );
  }
}
