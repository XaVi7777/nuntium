import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/user/user_model.dart';

part 'profile_bloc_models.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  ProfileStateData get data => this as ProfileStateData;

  const ProfileState._();

  const factory ProfileState.data({
    required UserModel user,
  }) = ProfileStateData;

  const factory ProfileState.empty() = _Empty;
}

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = ProfileEventInit;
  const factory ProfileEvent.updateUser(UserModel user) =
      ProfileEventUpdateUser;
  const factory ProfileEvent.signOut() = ProfileEventSignOut;
}

@freezed
class ProfileSR with _$ProfileSR {
  const factory ProfileSR.showLoader() = _ShowLoader;
  const factory ProfileSR.hideLoader() = _HideLoader;
}
