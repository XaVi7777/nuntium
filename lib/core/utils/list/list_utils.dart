import 'package:collection/collection.dart';

class ListUtils {
  const ListUtils._();

  static bool listsAreEqual<T>(List<T> list1, List<T> list2) {
    return const ListEquality().equals(list1, list2);
  }
}
