import 'package:injectable/injectable.dart';
import 'package:nuntium/data/models/article/fetch_articles_result.dart';
import 'package:nuntium/data/sections/sections_repository.dart';

@injectable
class FilterArticlesByActiveSectionUseCase {
  final SectionsRepository _sectionsRepository;

  FilterArticlesByActiveSectionUseCase(this._sectionsRepository);

  bool call(FetchArticlesResult result) {
    return result.section == _sectionsRepository.activeSection;
  }
}
