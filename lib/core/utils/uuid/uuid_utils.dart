import 'package:uuid/uuid.dart';

class UuidUtils {
  static const Uuid _uuid = Uuid();

  static String generateUuid() {
    return _uuid.v4();
  }
}
