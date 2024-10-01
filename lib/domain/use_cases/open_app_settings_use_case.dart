import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class OpenAppSettingsUseCase {
  Future<void> call() async {
    final opened = await openAppSettings();

    if (!opened) {
      throw Exception('Не удалось открыть настройки приложения.');
    }
  }
}
