enum GetRecomendedNewsPeriod {
  day,
  week,
  month,
}

extension GetRecomendedNewsPeriodExtension on GetRecomendedNewsPeriod {
  int get periodInDays {
    switch (this) {
      case GetRecomendedNewsPeriod.day:
        return 1;
      case GetRecomendedNewsPeriod.week:
        return 7;
      case GetRecomendedNewsPeriod.month:
        return 30;
    }
  }

  static GetRecomendedNewsPeriod fromInt(int days) {
    switch (days) {
      case 1:
        return GetRecomendedNewsPeriod.day;
      case 7:
        return GetRecomendedNewsPeriod.week;
      case 30:
        return GetRecomendedNewsPeriod.month;
      default:
        throw ArgumentError('Invalid number of days: $days');
    }
  }
}
