import 'package:easy_localization/easy_localization.dart';
import 'package:nuntium/generated/translations/locale_keys.g.dart';

class SectionTextUtil {
  static String getSectionTextWithEmoji(String type) {
    switch (type) {
      case 'home':
        return '🏠 ${LocaleKeys.section_home.tr()}';
      case 'arts':
        return '🎨 ${LocaleKeys.section_arts.tr()}';
      case 'automobiles':
        return '🚗 ${LocaleKeys.section_automobiles.tr()}';
      case 'books/review':
        return '📚 ${LocaleKeys.section_books_review.tr()}';
      case 'business':
        return '💼 ${LocaleKeys.section_business.tr()}';
      case 'fashion':
        return '👗 ${LocaleKeys.section_fashion.tr()}';
      case 'food':
        return '🍔 ${LocaleKeys.section_food.tr()}';
      case 'health':
        return '🏥 ${LocaleKeys.section_health.tr()}';
      case 'insider':
        return '🕵️‍♂️ ${LocaleKeys.section_insider.tr()}';
      case 'magazine':
        return '📰 ${LocaleKeys.section_magazine.tr()}';
      case 'movies':
        return '🎬 ${LocaleKeys.section_movies.tr()}';
      case 'nyregion':
        return '🗽 ${LocaleKeys.section_nyregion.tr()}';
      case 'obituaries':
        return '🕊️ ${LocaleKeys.section_obituaries.tr()}';
      case 'opinion':
        return '💬 ${LocaleKeys.section_opinion.tr()}';
      case 'politics':
        return '🏛️ ${LocaleKeys.section_politics.tr()}';
      case 'realestate':
        return '🏡 ${LocaleKeys.section_realestate.tr()}';
      case 'science':
        return '🔬 ${LocaleKeys.section_science.tr()}';
      case 'sports':
        return '🏅 ${LocaleKeys.section_sports.tr()}';
      case 'technology':
        return '💻 ${LocaleKeys.section_technology.tr()}';
      case 'theater':
        return '🎭 ${LocaleKeys.section_theater.tr()}';
      case 't-magazine':
        return '📰 ${LocaleKeys.section_t_magazine.tr()}';
      case 'travel':
        return '✈️ ${LocaleKeys.section_travel.tr()}';
      case 'upshot':
        return '📈 ${LocaleKeys.section_upshot.tr()}';
      case 'us':
        return '🇺🇸 ${LocaleKeys.section_us.tr()}';
      case 'world':
        return '🌍 ${LocaleKeys.section_world.tr()}';
      default:
        throw Exception('Unknown section type $type');
    }
  }

  static String getSectionText(String type) {
    switch (type) {
      case 'home':
        return LocaleKeys.section_home.tr();
      case 'arts':
        return LocaleKeys.section_arts.tr();
      case 'automobiles':
        return LocaleKeys.section_automobiles.tr();
      case 'books/review':
        return LocaleKeys.section_books_review.tr();
      case 'business':
        return LocaleKeys.section_business.tr();
      case 'fashion':
        return LocaleKeys.section_fashion.tr();
      case 'food':
        return LocaleKeys.section_food.tr();
      case 'health':
        return LocaleKeys.section_health.tr();
      case 'insider':
        return LocaleKeys.section_insider.tr();
      case 'magazine':
        return LocaleKeys.section_magazine.tr();
      case 'movies':
        return LocaleKeys.section_movies.tr();
      case 'nyregion':
        return LocaleKeys.section_nyregion.tr();
      case 'obituaries':
        return LocaleKeys.section_obituaries.tr();
      case 'opinion':
        return LocaleKeys.section_opinion.tr();
      case 'politics':
        return LocaleKeys.section_politics.tr();
      case 'realestate':
        return LocaleKeys.section_realestate.tr();
      case 'science':
        return LocaleKeys.section_science.tr();
      case 'sports':
        return LocaleKeys.section_sports.tr();
      case 'technology':
        return LocaleKeys.section_technology.tr();
      case 'theater':
        return LocaleKeys.section_theater.tr();
      case 't-magazine':
        return LocaleKeys.section_t_magazine.tr();
      case 'travel':
        return LocaleKeys.section_travel.tr();
      case 'upshot':
        return LocaleKeys.section_upshot.tr();
      case 'us':
        return LocaleKeys.section_us.tr();
      case 'world':
        return LocaleKeys.section_world.tr();
      default:
        throw Exception('Unknown section type $type');
    }
  }
}
