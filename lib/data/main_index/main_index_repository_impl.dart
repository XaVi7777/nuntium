import 'package:injectable/injectable.dart';
import 'package:nuntium/data/main_index/main_index_repository.dart';

@Singleton(as: MainIndexRepository)
class MainIndexRepositoryImpl implements MainIndexRepository {
  static const int _initialIndex = 0;
  static const int _minIndex = 0;
  static const int _maxIndex = 3;
  static const String invalidIndexMessage =
      'Invalid index. Please provide an index between $_minIndex and $_maxIndex.';

  int _mainIndex = _initialIndex;

  @override
  void init() {
    _mainIndex = _initialIndex;
  }

  @override
  int get mainIndex => _mainIndex;

  @override
  set mainIndex(int value) {
    if (_isValidIndex(value)) {
      _mainIndex = value;
    }
  }

  bool _isValidIndex(int updatedIndex) =>
      updatedIndex >= _minIndex && updatedIndex <= _maxIndex;
}
