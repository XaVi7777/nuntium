enum GetRecomendedNewsType {
  emailed,
  shared,
  viewed,
}

extension GetRecomendedNewsTypeExtension on GetRecomendedNewsType {
  String get asString {
    return toString().split('.').last;
  }
}
