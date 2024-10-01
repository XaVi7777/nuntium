import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nuntium/app/router/app_router.dart';
import 'package:nuntium/app/widgets/content_padding/content_padding.dart';
import 'package:nuntium/core/extensions/list_divide_ext.dart';
import 'package:nuntium/core/ui/ui.dart';
import 'package:nuntium/core/ui/ui_list_tile/ui_list_tile.dart';
import 'package:nuntium/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:nuntium/features/profile/presentation/bloc/profile_bloc_models.dart';
import 'package:nuntium/features/profile/presentation/ui/profile_content_menu_item.dart';
import 'package:nuntium/features/profile/presentation/ui/profile_user_info.dart';
import 'package:nuntium/generated/assets.gen.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class ProfileContent extends StatelessWidget {
  final ProfileStateData state;

  const ProfileContent({
    required this.state,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final items = <UIListTileConfig<ProfileContentMenuItem>>[
      UIListTileConfig(
        title: LocaleKeys.language,
        trailing: UISVGIcon(assetName: Assets.svgCompiled.right),
        value: ProfileContentMenuItem.language,
      ),
      UIListTileConfig(
        title: LocaleKeys.sign_out,
        trailing: UISVGIcon(
          assetName: Assets.svgCompiled.signOut,
        ),
        value: ProfileContentMenuItem.signOut,
      ),
    ];
    return ContentPadding(
      child: UIListView(
        children: [
          ProfileUserInfo(user: state.user),
          UISpacers.largeSpacing,
          ...items.map(_itemMapper).divide(UISpacers.mediumSpacing)
        ],
      ),
    );
  }

  Widget _itemMapper(UIListTileConfig<ProfileContentMenuItem> item) =>
      Builder(builder: (context) {
        return UIListTile(
          title: (item.title?.isNotEmpty ?? false)
              ? Text(item.title!.tr(context: context))
              : null,
          trailing: item.trailing,
          onTap: () => _onTap(context, item.value),
        );
      });

  void _onTap(BuildContext context, ProfileContentMenuItem? value) {
    switch (value) {
      case ProfileContentMenuItem.language:
        _onTapLanguage(context);
      case ProfileContentMenuItem.signOut:
        _onTapSignOut(context);
      default:
        throw UnimplementedError('ProfileContentMenuItem not implemented');
    }
  }

  void _onTapLanguage(BuildContext context) {
    context.pushRoute(const SelectLanguageRoute());
  }

  void _onTapSignOut(BuildContext context) {
    UIBottomSheet.showConfirmModalBottomSheet(
      context,
      title: LocaleKeys.sign_out_confirm_title.tr(context: context),
      confirmText: LocaleKeys.sign_out.tr(context: context),
      canceltext: LocaleKeys.cancel.tr(context: context),
      onCancel: () => _pop(context),
      onConfirm: () => _signOut(context),
    );
  }

  void _pop(BuildContext context) => context.maybePop();

  void _signOut(BuildContext context) =>
      context.read<ProfileBloc>().add(const ProfileEvent.signOut());
}
