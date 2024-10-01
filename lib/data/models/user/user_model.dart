import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuntium/data/models/user/sign_in_method_converter.dart';
import 'package:nuntium/domain/enums/sign_in_method.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String uid,
    required bool emailVerified,
    required bool isAnonymous,
    @SignInMethodConverter() required SignInMethod signInMethod,
    required String displayName,
    required String email,
    String? phoneNumber,
    String? photoURL,
    String? tenantId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelMapper on UserModel {
  static UserModel fromFirebaseUser(
    User firebaseUser,
    SignInMethod signInMethod,
  ) {
    return UserModel(
      uid: firebaseUser.uid,
      emailVerified: firebaseUser.emailVerified,
      isAnonymous: firebaseUser.isAnonymous,
      signInMethod: signInMethod,
      displayName: firebaseUser.displayName ?? '',
      email: firebaseUser.email ?? '',
      phoneNumber: firebaseUser.phoneNumber,
      photoURL: firebaseUser.photoURL,
      tenantId: firebaseUser.tenantId,
    );
  }
}
