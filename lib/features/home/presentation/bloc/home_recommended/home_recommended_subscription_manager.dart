import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/export.dart';

@LazySingleton(as: SubscriptionManager<List<ArticleModel>>)
@Named(InjectableNames.homeRecommendedBlocSubscriptionManager)
class HomeRecommendedSubscriptionManager
    extends SubscriptionManagerImpl<List<ArticleModel>> {}
