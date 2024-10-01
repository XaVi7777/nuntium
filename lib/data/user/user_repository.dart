import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:nuntium/core/models/failure/failure.dart';
import 'package:nuntium/data/models/user/user_model.dart';
import 'package:nuntium/domain/dto/sign_in_request.dart';
import 'package:nuntium/domain/dto/sign_up_request.dart';

abstract class UserRepository {
  bool isAuthorized();
  Stream<bool> get authStream;
  Stream<UserModel> get userStream;
  Future<Either<Failure, Unit>> init();
  Future<Either<Failure, Unit>> signIn(SignInRequest request);

  Future<Either<Failure, Unit>> signOut();

  Future<Either<Failure, Unit>> signUp(SignUpRequest request);
}
