import 'package:injectable/injectable.dart';
import 'package:nuntium/core/constants/http_const.dart';

@singleton
class LinkProvider {
  String get timeHost => '${HttpConst.httpSchema}://api.nytimes.com';
}
