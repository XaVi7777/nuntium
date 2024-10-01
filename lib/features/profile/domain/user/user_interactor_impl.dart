import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/user/user_model.dart';
import 'package:nuntium/data/user/user_repository.dart';
import 'package:nuntium/features/profile/domain/user/user_interactor.dart';

@Singleton(as: UserInteractor)
class UserInteractorImpl implements UserInteractor {
  final UserRepository _userRepository;

  const UserInteractorImpl(
    this._userRepository,
  );

  @override
  Stream<UserModel> get userStream => _userRepository.userStream;
}
