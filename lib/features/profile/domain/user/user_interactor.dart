import 'package:nuntium/data/models/user/user_model.dart';

abstract class UserInteractor {
  Stream<UserModel> get userStream;
}
