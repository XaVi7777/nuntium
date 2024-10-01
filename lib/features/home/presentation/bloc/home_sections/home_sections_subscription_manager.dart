import 'package:injectable/injectable.dart';
import 'package:nuntium/app/constants/injectable_names.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/export.dart';

@LazySingleton(as: SubscriptionManager<List<SectionModel>>)
@Named(InjectableNames.homeSectionsBlocSubscriptionManager)
class HomeArticlesSubscriptionManager
    extends SubscriptionManagerImpl<List<SectionModel>> {}
