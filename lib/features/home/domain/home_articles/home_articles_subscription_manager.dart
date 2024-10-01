import 'package:injectable/injectable.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/article/fetch_articles_result.dart';

@LazySingleton(as: SubscriptionManager<FetchArticlesResult>)
class HomeArticlesSubscriptionManager
    extends SubscriptionManagerImpl<FetchArticlesResult> {}
