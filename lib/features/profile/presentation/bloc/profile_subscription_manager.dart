import 'package:injectable/injectable.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/export.dart';

@LazySingleton(as: SubscriptionManager<UserModel>)
class ProfileSubscriptionManager
    extends SubscriptionManagerImpl<UserModel> {}
