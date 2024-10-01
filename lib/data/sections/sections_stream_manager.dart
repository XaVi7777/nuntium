import 'package:injectable/injectable.dart';
import 'package:nuntium/core/stream/export.dart';
import 'package:nuntium/data/models/section/section_model.dart';

@LazySingleton(as: StreamManager<List<SectionModel>>)
class ArticlesStreamManager extends StreamManagerImpl<List<SectionModel>> {}
