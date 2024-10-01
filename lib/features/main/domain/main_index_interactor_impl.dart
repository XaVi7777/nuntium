import 'package:injectable/injectable.dart';
import 'package:nuntium/data/main_index/main_index_repository.dart';
import 'package:nuntium/features/main/domain/main_index_interactor.dart';

@Singleton(as: MainIndexInteractor)
class MainIndexInteractorImpl implements MainIndexInteractor {
  final MainIndexRepository _mainIndexRepository;

  const MainIndexInteractorImpl(
    this._mainIndexRepository,
  );

  @override
  int get mainIndex => _mainIndexRepository.mainIndex;
  @override
  set mainIndex(int value) {
    _mainIndexRepository.mainIndex = value;
  }

  @override
  void init() {
    _mainIndexRepository.init();
  }
}
