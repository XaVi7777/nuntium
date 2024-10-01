// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      emailVerified: json['emailVerified'] as bool,
      isAnonymous: json['isAnonymous'] as bool,
      signInMethod: const SignInMethodConverter()
          .fromJson(json['signInMethod'] as String),
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      photoURL: json['photoURL'] as String?,
      tenantId: json['tenantId'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'emailVerified': instance.emailVerified,
      'isAnonymous': instance.isAnonymous,
      'signInMethod':
          const SignInMethodConverter().toJson(instance.signInMethod),
      'displayName': instance.displayName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'photoURL': instance.photoURL,
      'tenantId': instance.tenantId,
    };
