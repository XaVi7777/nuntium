// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ArticlesTableTable extends ArticlesTable
    with TableInfo<$ArticlesTableTable, ArticlesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticlesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectionMeta =
      const VerificationMeta('section');
  @override
  late final GeneratedColumn<String> section = GeneratedColumn<String>(
      'section', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subsectionMeta =
      const VerificationMeta('subsection');
  @override
  late final GeneratedColumn<String> subsection = GeneratedColumn<String>(
      'subsection', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _abstractMeta =
      const VerificationMeta('abstract');
  @override
  late final GeneratedColumn<String> abstract = GeneratedColumn<String>(
      'abstract', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uriMeta = const VerificationMeta('uri');
  @override
  late final GeneratedColumn<String> uri = GeneratedColumn<String>(
      'uri', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bylineMeta = const VerificationMeta('byline');
  @override
  late final GeneratedColumn<String> byline = GeneratedColumn<String>(
      'byline', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _desFacetMeta =
      const VerificationMeta('desFacet');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> desFacet =
      GeneratedColumn<String>('des_facet', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ArticlesTableTable.$converterdesFacetn);
  static const VerificationMeta _orgFacetMeta =
      const VerificationMeta('orgFacet');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> orgFacet =
      GeneratedColumn<String>('org_facet', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ArticlesTableTable.$converterorgFacetn);
  static const VerificationMeta _perFacetMeta =
      const VerificationMeta('perFacet');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> perFacet =
      GeneratedColumn<String>('per_facet', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ArticlesTableTable.$converterperFacetn);
  static const VerificationMeta _geoFacetMeta =
      const VerificationMeta('geoFacet');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> geoFacet =
      GeneratedColumn<String>('geo_facet', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ArticlesTableTable.$convertergeoFacetn);
  static const VerificationMeta _mediaMeta = const VerificationMeta('media');
  @override
  late final GeneratedColumnWithTypeConverter<List<MediaModel>?, String> media =
      GeneratedColumn<String>('media', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<MediaModel>?>(
              $ArticlesTableTable.$convertermedian);
  @override
  List<GeneratedColumn> get $columns => [
        uuid,
        section,
        subsection,
        title,
        abstract,
        url,
        uri,
        byline,
        desFacet,
        orgFacet,
        perFacet,
        geoFacet,
        media
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'articles_table';
  @override
  VerificationContext validateIntegrity(Insertable<ArticlesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('section')) {
      context.handle(_sectionMeta,
          section.isAcceptableOrUnknown(data['section']!, _sectionMeta));
    } else if (isInserting) {
      context.missing(_sectionMeta);
    }
    if (data.containsKey('subsection')) {
      context.handle(
          _subsectionMeta,
          subsection.isAcceptableOrUnknown(
              data['subsection']!, _subsectionMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('abstract')) {
      context.handle(_abstractMeta,
          abstract.isAcceptableOrUnknown(data['abstract']!, _abstractMeta));
    } else if (isInserting) {
      context.missing(_abstractMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('uri')) {
      context.handle(
          _uriMeta, uri.isAcceptableOrUnknown(data['uri']!, _uriMeta));
    } else if (isInserting) {
      context.missing(_uriMeta);
    }
    if (data.containsKey('byline')) {
      context.handle(_bylineMeta,
          byline.isAcceptableOrUnknown(data['byline']!, _bylineMeta));
    }
    context.handle(_desFacetMeta, const VerificationResult.success());
    context.handle(_orgFacetMeta, const VerificationResult.success());
    context.handle(_perFacetMeta, const VerificationResult.success());
    context.handle(_geoFacetMeta, const VerificationResult.success());
    context.handle(_mediaMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  ArticlesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticlesTableData(
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      section: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}section'])!,
      subsection: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subsection']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      abstract: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abstract'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      uri: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uri'])!,
      byline: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}byline']),
      desFacet: $ArticlesTableTable.$converterdesFacetn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}des_facet'])),
      orgFacet: $ArticlesTableTable.$converterorgFacetn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}org_facet'])),
      perFacet: $ArticlesTableTable.$converterperFacetn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}per_facet'])),
      geoFacet: $ArticlesTableTable.$convertergeoFacetn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}geo_facet'])),
      media: $ArticlesTableTable.$convertermedian.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}media'])),
    );
  }

  @override
  $ArticlesTableTable createAlias(String alias) {
    return $ArticlesTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterdesFacet =
      const StringListConverter();
  static TypeConverter<List<String>?, String?> $converterdesFacetn =
      NullAwareTypeConverter.wrap($converterdesFacet);
  static TypeConverter<List<String>, String> $converterorgFacet =
      const StringListConverter();
  static TypeConverter<List<String>?, String?> $converterorgFacetn =
      NullAwareTypeConverter.wrap($converterorgFacet);
  static TypeConverter<List<String>, String> $converterperFacet =
      const StringListConverter();
  static TypeConverter<List<String>?, String?> $converterperFacetn =
      NullAwareTypeConverter.wrap($converterperFacet);
  static TypeConverter<List<String>, String> $convertergeoFacet =
      const StringListConverter();
  static TypeConverter<List<String>?, String?> $convertergeoFacetn =
      NullAwareTypeConverter.wrap($convertergeoFacet);
  static TypeConverter<List<MediaModel>, String> $convertermedia =
      const MediaListConverter();
  static TypeConverter<List<MediaModel>?, String?> $convertermedian =
      NullAwareTypeConverter.wrap($convertermedia);
}

class ArticlesTableData extends DataClass
    implements Insertable<ArticlesTableData> {
  final String uuid;
  final String section;
  final String? subsection;
  final String title;
  final String abstract;
  final String url;
  final String uri;
  final String? byline;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<MediaModel>? media;
  const ArticlesTableData(
      {required this.uuid,
      required this.section,
      this.subsection,
      required this.title,
      required this.abstract,
      required this.url,
      required this.uri,
      this.byline,
      this.desFacet,
      this.orgFacet,
      this.perFacet,
      this.geoFacet,
      this.media});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['section'] = Variable<String>(section);
    if (!nullToAbsent || subsection != null) {
      map['subsection'] = Variable<String>(subsection);
    }
    map['title'] = Variable<String>(title);
    map['abstract'] = Variable<String>(abstract);
    map['url'] = Variable<String>(url);
    map['uri'] = Variable<String>(uri);
    if (!nullToAbsent || byline != null) {
      map['byline'] = Variable<String>(byline);
    }
    if (!nullToAbsent || desFacet != null) {
      map['des_facet'] = Variable<String>(
          $ArticlesTableTable.$converterdesFacetn.toSql(desFacet));
    }
    if (!nullToAbsent || orgFacet != null) {
      map['org_facet'] = Variable<String>(
          $ArticlesTableTable.$converterorgFacetn.toSql(orgFacet));
    }
    if (!nullToAbsent || perFacet != null) {
      map['per_facet'] = Variable<String>(
          $ArticlesTableTable.$converterperFacetn.toSql(perFacet));
    }
    if (!nullToAbsent || geoFacet != null) {
      map['geo_facet'] = Variable<String>(
          $ArticlesTableTable.$convertergeoFacetn.toSql(geoFacet));
    }
    if (!nullToAbsent || media != null) {
      map['media'] =
          Variable<String>($ArticlesTableTable.$convertermedian.toSql(media));
    }
    return map;
  }

  ArticlesTableCompanion toCompanion(bool nullToAbsent) {
    return ArticlesTableCompanion(
      uuid: Value(uuid),
      section: Value(section),
      subsection: subsection == null && nullToAbsent
          ? const Value.absent()
          : Value(subsection),
      title: Value(title),
      abstract: Value(abstract),
      url: Value(url),
      uri: Value(uri),
      byline:
          byline == null && nullToAbsent ? const Value.absent() : Value(byline),
      desFacet: desFacet == null && nullToAbsent
          ? const Value.absent()
          : Value(desFacet),
      orgFacet: orgFacet == null && nullToAbsent
          ? const Value.absent()
          : Value(orgFacet),
      perFacet: perFacet == null && nullToAbsent
          ? const Value.absent()
          : Value(perFacet),
      geoFacet: geoFacet == null && nullToAbsent
          ? const Value.absent()
          : Value(geoFacet),
      media:
          media == null && nullToAbsent ? const Value.absent() : Value(media),
    );
  }

  factory ArticlesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticlesTableData(
      uuid: serializer.fromJson<String>(json['uuid']),
      section: serializer.fromJson<String>(json['section']),
      subsection: serializer.fromJson<String?>(json['subsection']),
      title: serializer.fromJson<String>(json['title']),
      abstract: serializer.fromJson<String>(json['abstract']),
      url: serializer.fromJson<String>(json['url']),
      uri: serializer.fromJson<String>(json['uri']),
      byline: serializer.fromJson<String?>(json['byline']),
      desFacet: serializer.fromJson<List<String>?>(json['desFacet']),
      orgFacet: serializer.fromJson<List<String>?>(json['orgFacet']),
      perFacet: serializer.fromJson<List<String>?>(json['perFacet']),
      geoFacet: serializer.fromJson<List<String>?>(json['geoFacet']),
      media: serializer.fromJson<List<MediaModel>?>(json['media']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'section': serializer.toJson<String>(section),
      'subsection': serializer.toJson<String?>(subsection),
      'title': serializer.toJson<String>(title),
      'abstract': serializer.toJson<String>(abstract),
      'url': serializer.toJson<String>(url),
      'uri': serializer.toJson<String>(uri),
      'byline': serializer.toJson<String?>(byline),
      'desFacet': serializer.toJson<List<String>?>(desFacet),
      'orgFacet': serializer.toJson<List<String>?>(orgFacet),
      'perFacet': serializer.toJson<List<String>?>(perFacet),
      'geoFacet': serializer.toJson<List<String>?>(geoFacet),
      'media': serializer.toJson<List<MediaModel>?>(media),
    };
  }

  ArticlesTableData copyWith(
          {String? uuid,
          String? section,
          Value<String?> subsection = const Value.absent(),
          String? title,
          String? abstract,
          String? url,
          String? uri,
          Value<String?> byline = const Value.absent(),
          Value<List<String>?> desFacet = const Value.absent(),
          Value<List<String>?> orgFacet = const Value.absent(),
          Value<List<String>?> perFacet = const Value.absent(),
          Value<List<String>?> geoFacet = const Value.absent(),
          Value<List<MediaModel>?> media = const Value.absent()}) =>
      ArticlesTableData(
        uuid: uuid ?? this.uuid,
        section: section ?? this.section,
        subsection: subsection.present ? subsection.value : this.subsection,
        title: title ?? this.title,
        abstract: abstract ?? this.abstract,
        url: url ?? this.url,
        uri: uri ?? this.uri,
        byline: byline.present ? byline.value : this.byline,
        desFacet: desFacet.present ? desFacet.value : this.desFacet,
        orgFacet: orgFacet.present ? orgFacet.value : this.orgFacet,
        perFacet: perFacet.present ? perFacet.value : this.perFacet,
        geoFacet: geoFacet.present ? geoFacet.value : this.geoFacet,
        media: media.present ? media.value : this.media,
      );
  ArticlesTableData copyWithCompanion(ArticlesTableCompanion data) {
    return ArticlesTableData(
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      section: data.section.present ? data.section.value : this.section,
      subsection:
          data.subsection.present ? data.subsection.value : this.subsection,
      title: data.title.present ? data.title.value : this.title,
      abstract: data.abstract.present ? data.abstract.value : this.abstract,
      url: data.url.present ? data.url.value : this.url,
      uri: data.uri.present ? data.uri.value : this.uri,
      byline: data.byline.present ? data.byline.value : this.byline,
      desFacet: data.desFacet.present ? data.desFacet.value : this.desFacet,
      orgFacet: data.orgFacet.present ? data.orgFacet.value : this.orgFacet,
      perFacet: data.perFacet.present ? data.perFacet.value : this.perFacet,
      geoFacet: data.geoFacet.present ? data.geoFacet.value : this.geoFacet,
      media: data.media.present ? data.media.value : this.media,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ArticlesTableData(')
          ..write('uuid: $uuid, ')
          ..write('section: $section, ')
          ..write('subsection: $subsection, ')
          ..write('title: $title, ')
          ..write('abstract: $abstract, ')
          ..write('url: $url, ')
          ..write('uri: $uri, ')
          ..write('byline: $byline, ')
          ..write('desFacet: $desFacet, ')
          ..write('orgFacet: $orgFacet, ')
          ..write('perFacet: $perFacet, ')
          ..write('geoFacet: $geoFacet, ')
          ..write('media: $media')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, section, subsection, title, abstract,
      url, uri, byline, desFacet, orgFacet, perFacet, geoFacet, media);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticlesTableData &&
          other.uuid == this.uuid &&
          other.section == this.section &&
          other.subsection == this.subsection &&
          other.title == this.title &&
          other.abstract == this.abstract &&
          other.url == this.url &&
          other.uri == this.uri &&
          other.byline == this.byline &&
          other.desFacet == this.desFacet &&
          other.orgFacet == this.orgFacet &&
          other.perFacet == this.perFacet &&
          other.geoFacet == this.geoFacet &&
          other.media == this.media);
}

class ArticlesTableCompanion extends UpdateCompanion<ArticlesTableData> {
  final Value<String> uuid;
  final Value<String> section;
  final Value<String?> subsection;
  final Value<String> title;
  final Value<String> abstract;
  final Value<String> url;
  final Value<String> uri;
  final Value<String?> byline;
  final Value<List<String>?> desFacet;
  final Value<List<String>?> orgFacet;
  final Value<List<String>?> perFacet;
  final Value<List<String>?> geoFacet;
  final Value<List<MediaModel>?> media;
  final Value<int> rowid;
  const ArticlesTableCompanion({
    this.uuid = const Value.absent(),
    this.section = const Value.absent(),
    this.subsection = const Value.absent(),
    this.title = const Value.absent(),
    this.abstract = const Value.absent(),
    this.url = const Value.absent(),
    this.uri = const Value.absent(),
    this.byline = const Value.absent(),
    this.desFacet = const Value.absent(),
    this.orgFacet = const Value.absent(),
    this.perFacet = const Value.absent(),
    this.geoFacet = const Value.absent(),
    this.media = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ArticlesTableCompanion.insert({
    required String uuid,
    required String section,
    this.subsection = const Value.absent(),
    required String title,
    required String abstract,
    required String url,
    required String uri,
    this.byline = const Value.absent(),
    this.desFacet = const Value.absent(),
    this.orgFacet = const Value.absent(),
    this.perFacet = const Value.absent(),
    this.geoFacet = const Value.absent(),
    this.media = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : uuid = Value(uuid),
        section = Value(section),
        title = Value(title),
        abstract = Value(abstract),
        url = Value(url),
        uri = Value(uri);
  static Insertable<ArticlesTableData> custom({
    Expression<String>? uuid,
    Expression<String>? section,
    Expression<String>? subsection,
    Expression<String>? title,
    Expression<String>? abstract,
    Expression<String>? url,
    Expression<String>? uri,
    Expression<String>? byline,
    Expression<String>? desFacet,
    Expression<String>? orgFacet,
    Expression<String>? perFacet,
    Expression<String>? geoFacet,
    Expression<String>? media,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (section != null) 'section': section,
      if (subsection != null) 'subsection': subsection,
      if (title != null) 'title': title,
      if (abstract != null) 'abstract': abstract,
      if (url != null) 'url': url,
      if (uri != null) 'uri': uri,
      if (byline != null) 'byline': byline,
      if (desFacet != null) 'des_facet': desFacet,
      if (orgFacet != null) 'org_facet': orgFacet,
      if (perFacet != null) 'per_facet': perFacet,
      if (geoFacet != null) 'geo_facet': geoFacet,
      if (media != null) 'media': media,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ArticlesTableCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? section,
      Value<String?>? subsection,
      Value<String>? title,
      Value<String>? abstract,
      Value<String>? url,
      Value<String>? uri,
      Value<String?>? byline,
      Value<List<String>?>? desFacet,
      Value<List<String>?>? orgFacet,
      Value<List<String>?>? perFacet,
      Value<List<String>?>? geoFacet,
      Value<List<MediaModel>?>? media,
      Value<int>? rowid}) {
    return ArticlesTableCompanion(
      uuid: uuid ?? this.uuid,
      section: section ?? this.section,
      subsection: subsection ?? this.subsection,
      title: title ?? this.title,
      abstract: abstract ?? this.abstract,
      url: url ?? this.url,
      uri: uri ?? this.uri,
      byline: byline ?? this.byline,
      desFacet: desFacet ?? this.desFacet,
      orgFacet: orgFacet ?? this.orgFacet,
      perFacet: perFacet ?? this.perFacet,
      geoFacet: geoFacet ?? this.geoFacet,
      media: media ?? this.media,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (section.present) {
      map['section'] = Variable<String>(section.value);
    }
    if (subsection.present) {
      map['subsection'] = Variable<String>(subsection.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (abstract.present) {
      map['abstract'] = Variable<String>(abstract.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (uri.present) {
      map['uri'] = Variable<String>(uri.value);
    }
    if (byline.present) {
      map['byline'] = Variable<String>(byline.value);
    }
    if (desFacet.present) {
      map['des_facet'] = Variable<String>(
          $ArticlesTableTable.$converterdesFacetn.toSql(desFacet.value));
    }
    if (orgFacet.present) {
      map['org_facet'] = Variable<String>(
          $ArticlesTableTable.$converterorgFacetn.toSql(orgFacet.value));
    }
    if (perFacet.present) {
      map['per_facet'] = Variable<String>(
          $ArticlesTableTable.$converterperFacetn.toSql(perFacet.value));
    }
    if (geoFacet.present) {
      map['geo_facet'] = Variable<String>(
          $ArticlesTableTable.$convertergeoFacetn.toSql(geoFacet.value));
    }
    if (media.present) {
      map['media'] = Variable<String>(
          $ArticlesTableTable.$convertermedian.toSql(media.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticlesTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('section: $section, ')
          ..write('subsection: $subsection, ')
          ..write('title: $title, ')
          ..write('abstract: $abstract, ')
          ..write('url: $url, ')
          ..write('uri: $uri, ')
          ..write('byline: $byline, ')
          ..write('desFacet: $desFacet, ')
          ..write('orgFacet: $orgFacet, ')
          ..write('perFacet: $perFacet, ')
          ..write('geoFacet: $geoFacet, ')
          ..write('media: $media, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SectionsTableTable extends SectionsTable
    with TableInfo<$SectionsTableTable, SectionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isSelectedMeta =
      const VerificationMeta('isSelected');
  @override
  late final GeneratedColumn<bool> isSelected = GeneratedColumn<bool>(
      'is_selected', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_selected" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [type, isSelected];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sections_table';
  @override
  VerificationContext validateIntegrity(Insertable<SectionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('is_selected')) {
      context.handle(
          _isSelectedMeta,
          isSelected.isAcceptableOrUnknown(
              data['is_selected']!, _isSelectedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {type};
  @override
  SectionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionsTableData(
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      isSelected: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_selected'])!,
    );
  }

  @override
  $SectionsTableTable createAlias(String alias) {
    return $SectionsTableTable(attachedDatabase, alias);
  }
}

class SectionsTableData extends DataClass
    implements Insertable<SectionsTableData> {
  final String type;
  final bool isSelected;
  const SectionsTableData({required this.type, required this.isSelected});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['type'] = Variable<String>(type);
    map['is_selected'] = Variable<bool>(isSelected);
    return map;
  }

  SectionsTableCompanion toCompanion(bool nullToAbsent) {
    return SectionsTableCompanion(
      type: Value(type),
      isSelected: Value(isSelected),
    );
  }

  factory SectionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionsTableData(
      type: serializer.fromJson<String>(json['type']),
      isSelected: serializer.fromJson<bool>(json['isSelected']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'type': serializer.toJson<String>(type),
      'isSelected': serializer.toJson<bool>(isSelected),
    };
  }

  SectionsTableData copyWith({String? type, bool? isSelected}) =>
      SectionsTableData(
        type: type ?? this.type,
        isSelected: isSelected ?? this.isSelected,
      );
  SectionsTableData copyWithCompanion(SectionsTableCompanion data) {
    return SectionsTableData(
      type: data.type.present ? data.type.value : this.type,
      isSelected:
          data.isSelected.present ? data.isSelected.value : this.isSelected,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SectionsTableData(')
          ..write('type: $type, ')
          ..write('isSelected: $isSelected')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(type, isSelected);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionsTableData &&
          other.type == this.type &&
          other.isSelected == this.isSelected);
}

class SectionsTableCompanion extends UpdateCompanion<SectionsTableData> {
  final Value<String> type;
  final Value<bool> isSelected;
  final Value<int> rowid;
  const SectionsTableCompanion({
    this.type = const Value.absent(),
    this.isSelected = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectionsTableCompanion.insert({
    required String type,
    this.isSelected = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : type = Value(type);
  static Insertable<SectionsTableData> custom({
    Expression<String>? type,
    Expression<bool>? isSelected,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (type != null) 'type': type,
      if (isSelected != null) 'is_selected': isSelected,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectionsTableCompanion copyWith(
      {Value<String>? type, Value<bool>? isSelected, Value<int>? rowid}) {
    return SectionsTableCompanion(
      type: type ?? this.type,
      isSelected: isSelected ?? this.isSelected,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (isSelected.present) {
      map['is_selected'] = Variable<bool>(isSelected.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionsTableCompanion(')
          ..write('type: $type, ')
          ..write('isSelected: $isSelected, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HomeArticlesTableTable extends HomeArticlesTable
    with TableInfo<$HomeArticlesTableTable, HomeArticlesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HomeArticlesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _articleUuidMeta =
      const VerificationMeta('articleUuid');
  @override
  late final GeneratedColumn<String> articleUuid = GeneratedColumn<String>(
      'article_uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES articles_table(uuid) NOT NULL');
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<DateTime> dateAdded = GeneratedColumn<DateTime>(
      'date_added', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [articleUuid, dateAdded];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'home_articles_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<HomeArticlesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('article_uuid')) {
      context.handle(
          _articleUuidMeta,
          articleUuid.isAcceptableOrUnknown(
              data['article_uuid']!, _articleUuidMeta));
    } else if (isInserting) {
      context.missing(_articleUuidMeta);
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleUuid};
  @override
  HomeArticlesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HomeArticlesTableData(
      articleUuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}article_uuid'])!,
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_added'])!,
    );
  }

  @override
  $HomeArticlesTableTable createAlias(String alias) {
    return $HomeArticlesTableTable(attachedDatabase, alias);
  }
}

class HomeArticlesTableData extends DataClass
    implements Insertable<HomeArticlesTableData> {
  final String articleUuid;
  final DateTime dateAdded;
  const HomeArticlesTableData(
      {required this.articleUuid, required this.dateAdded});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['article_uuid'] = Variable<String>(articleUuid);
    map['date_added'] = Variable<DateTime>(dateAdded);
    return map;
  }

  HomeArticlesTableCompanion toCompanion(bool nullToAbsent) {
    return HomeArticlesTableCompanion(
      articleUuid: Value(articleUuid),
      dateAdded: Value(dateAdded),
    );
  }

  factory HomeArticlesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HomeArticlesTableData(
      articleUuid: serializer.fromJson<String>(json['articleUuid']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'articleUuid': serializer.toJson<String>(articleUuid),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
    };
  }

  HomeArticlesTableData copyWith({String? articleUuid, DateTime? dateAdded}) =>
      HomeArticlesTableData(
        articleUuid: articleUuid ?? this.articleUuid,
        dateAdded: dateAdded ?? this.dateAdded,
      );
  HomeArticlesTableData copyWithCompanion(HomeArticlesTableCompanion data) {
    return HomeArticlesTableData(
      articleUuid:
          data.articleUuid.present ? data.articleUuid.value : this.articleUuid,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HomeArticlesTableData(')
          ..write('articleUuid: $articleUuid, ')
          ..write('dateAdded: $dateAdded')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(articleUuid, dateAdded);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HomeArticlesTableData &&
          other.articleUuid == this.articleUuid &&
          other.dateAdded == this.dateAdded);
}

class HomeArticlesTableCompanion
    extends UpdateCompanion<HomeArticlesTableData> {
  final Value<String> articleUuid;
  final Value<DateTime> dateAdded;
  final Value<int> rowid;
  const HomeArticlesTableCompanion({
    this.articleUuid = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HomeArticlesTableCompanion.insert({
    required String articleUuid,
    this.dateAdded = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : articleUuid = Value(articleUuid);
  static Insertable<HomeArticlesTableData> custom({
    Expression<String>? articleUuid,
    Expression<DateTime>? dateAdded,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (articleUuid != null) 'article_uuid': articleUuid,
      if (dateAdded != null) 'date_added': dateAdded,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HomeArticlesTableCompanion copyWith(
      {Value<String>? articleUuid,
      Value<DateTime>? dateAdded,
      Value<int>? rowid}) {
    return HomeArticlesTableCompanion(
      articleUuid: articleUuid ?? this.articleUuid,
      dateAdded: dateAdded ?? this.dateAdded,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleUuid.present) {
      map['article_uuid'] = Variable<String>(articleUuid.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HomeArticlesTableCompanion(')
          ..write('articleUuid: $articleUuid, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RecommendedArticlesTableTable extends RecommendedArticlesTable
    with
        TableInfo<$RecommendedArticlesTableTable,
            RecommendedArticlesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecommendedArticlesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _articleUuidMeta =
      const VerificationMeta('articleUuid');
  @override
  late final GeneratedColumn<String> articleUuid = GeneratedColumn<String>(
      'article_uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES articles_table(uuid) NOT NULL');
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<DateTime> dateAdded = GeneratedColumn<DateTime>(
      'date_added', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<int> period = GeneratedColumn<int>(
      'period', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [articleUuid, dateAdded, period];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recommended_articles_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RecommendedArticlesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('article_uuid')) {
      context.handle(
          _articleUuidMeta,
          articleUuid.isAcceptableOrUnknown(
              data['article_uuid']!, _articleUuidMeta));
    } else if (isInserting) {
      context.missing(_articleUuidMeta);
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period']!, _periodMeta));
    } else if (isInserting) {
      context.missing(_periodMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleUuid, period};
  @override
  RecommendedArticlesTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecommendedArticlesTableData(
      articleUuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}article_uuid'])!,
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_added'])!,
      period: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}period'])!,
    );
  }

  @override
  $RecommendedArticlesTableTable createAlias(String alias) {
    return $RecommendedArticlesTableTable(attachedDatabase, alias);
  }
}

class RecommendedArticlesTableData extends DataClass
    implements Insertable<RecommendedArticlesTableData> {
  final String articleUuid;
  final DateTime dateAdded;
  final int period;
  const RecommendedArticlesTableData(
      {required this.articleUuid,
      required this.dateAdded,
      required this.period});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['article_uuid'] = Variable<String>(articleUuid);
    map['date_added'] = Variable<DateTime>(dateAdded);
    map['period'] = Variable<int>(period);
    return map;
  }

  RecommendedArticlesTableCompanion toCompanion(bool nullToAbsent) {
    return RecommendedArticlesTableCompanion(
      articleUuid: Value(articleUuid),
      dateAdded: Value(dateAdded),
      period: Value(period),
    );
  }

  factory RecommendedArticlesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecommendedArticlesTableData(
      articleUuid: serializer.fromJson<String>(json['articleUuid']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
      period: serializer.fromJson<int>(json['period']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'articleUuid': serializer.toJson<String>(articleUuid),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
      'period': serializer.toJson<int>(period),
    };
  }

  RecommendedArticlesTableData copyWith(
          {String? articleUuid, DateTime? dateAdded, int? period}) =>
      RecommendedArticlesTableData(
        articleUuid: articleUuid ?? this.articleUuid,
        dateAdded: dateAdded ?? this.dateAdded,
        period: period ?? this.period,
      );
  RecommendedArticlesTableData copyWithCompanion(
      RecommendedArticlesTableCompanion data) {
    return RecommendedArticlesTableData(
      articleUuid:
          data.articleUuid.present ? data.articleUuid.value : this.articleUuid,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
      period: data.period.present ? data.period.value : this.period,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecommendedArticlesTableData(')
          ..write('articleUuid: $articleUuid, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('period: $period')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(articleUuid, dateAdded, period);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecommendedArticlesTableData &&
          other.articleUuid == this.articleUuid &&
          other.dateAdded == this.dateAdded &&
          other.period == this.period);
}

class RecommendedArticlesTableCompanion
    extends UpdateCompanion<RecommendedArticlesTableData> {
  final Value<String> articleUuid;
  final Value<DateTime> dateAdded;
  final Value<int> period;
  final Value<int> rowid;
  const RecommendedArticlesTableCompanion({
    this.articleUuid = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.period = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RecommendedArticlesTableCompanion.insert({
    required String articleUuid,
    this.dateAdded = const Value.absent(),
    required int period,
    this.rowid = const Value.absent(),
  })  : articleUuid = Value(articleUuid),
        period = Value(period);
  static Insertable<RecommendedArticlesTableData> custom({
    Expression<String>? articleUuid,
    Expression<DateTime>? dateAdded,
    Expression<int>? period,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (articleUuid != null) 'article_uuid': articleUuid,
      if (dateAdded != null) 'date_added': dateAdded,
      if (period != null) 'period': period,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RecommendedArticlesTableCompanion copyWith(
      {Value<String>? articleUuid,
      Value<DateTime>? dateAdded,
      Value<int>? period,
      Value<int>? rowid}) {
    return RecommendedArticlesTableCompanion(
      articleUuid: articleUuid ?? this.articleUuid,
      dateAdded: dateAdded ?? this.dateAdded,
      period: period ?? this.period,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleUuid.present) {
      map['article_uuid'] = Variable<String>(articleUuid.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (period.present) {
      map['period'] = Variable<int>(period.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecommendedArticlesTableCompanion(')
          ..write('articleUuid: $articleUuid, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('period: $period, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BookmarkedArticlesTableTable extends BookmarkedArticlesTable
    with TableInfo<$BookmarkedArticlesTableTable, BookmarkedArticlesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarkedArticlesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _articleUuidMeta =
      const VerificationMeta('articleUuid');
  @override
  late final GeneratedColumn<String> articleUuid = GeneratedColumn<String>(
      'article_uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES articles_table(uuid) NOT NULL');
  static const VerificationMeta _dateAddedMeta =
      const VerificationMeta('dateAdded');
  @override
  late final GeneratedColumn<DateTime> dateAdded = GeneratedColumn<DateTime>(
      'date_added', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [articleUuid, dateAdded];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarked_articles_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<BookmarkedArticlesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('article_uuid')) {
      context.handle(
          _articleUuidMeta,
          articleUuid.isAcceptableOrUnknown(
              data['article_uuid']!, _articleUuidMeta));
    } else if (isInserting) {
      context.missing(_articleUuidMeta);
    }
    if (data.containsKey('date_added')) {
      context.handle(_dateAddedMeta,
          dateAdded.isAcceptableOrUnknown(data['date_added']!, _dateAddedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {articleUuid};
  @override
  BookmarkedArticlesTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookmarkedArticlesTableData(
      articleUuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}article_uuid'])!,
      dateAdded: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_added'])!,
    );
  }

  @override
  $BookmarkedArticlesTableTable createAlias(String alias) {
    return $BookmarkedArticlesTableTable(attachedDatabase, alias);
  }
}

class BookmarkedArticlesTableData extends DataClass
    implements Insertable<BookmarkedArticlesTableData> {
  final String articleUuid;
  final DateTime dateAdded;
  const BookmarkedArticlesTableData(
      {required this.articleUuid, required this.dateAdded});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['article_uuid'] = Variable<String>(articleUuid);
    map['date_added'] = Variable<DateTime>(dateAdded);
    return map;
  }

  BookmarkedArticlesTableCompanion toCompanion(bool nullToAbsent) {
    return BookmarkedArticlesTableCompanion(
      articleUuid: Value(articleUuid),
      dateAdded: Value(dateAdded),
    );
  }

  factory BookmarkedArticlesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookmarkedArticlesTableData(
      articleUuid: serializer.fromJson<String>(json['articleUuid']),
      dateAdded: serializer.fromJson<DateTime>(json['dateAdded']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'articleUuid': serializer.toJson<String>(articleUuid),
      'dateAdded': serializer.toJson<DateTime>(dateAdded),
    };
  }

  BookmarkedArticlesTableData copyWith(
          {String? articleUuid, DateTime? dateAdded}) =>
      BookmarkedArticlesTableData(
        articleUuid: articleUuid ?? this.articleUuid,
        dateAdded: dateAdded ?? this.dateAdded,
      );
  BookmarkedArticlesTableData copyWithCompanion(
      BookmarkedArticlesTableCompanion data) {
    return BookmarkedArticlesTableData(
      articleUuid:
          data.articleUuid.present ? data.articleUuid.value : this.articleUuid,
      dateAdded: data.dateAdded.present ? data.dateAdded.value : this.dateAdded,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BookmarkedArticlesTableData(')
          ..write('articleUuid: $articleUuid, ')
          ..write('dateAdded: $dateAdded')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(articleUuid, dateAdded);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookmarkedArticlesTableData &&
          other.articleUuid == this.articleUuid &&
          other.dateAdded == this.dateAdded);
}

class BookmarkedArticlesTableCompanion
    extends UpdateCompanion<BookmarkedArticlesTableData> {
  final Value<String> articleUuid;
  final Value<DateTime> dateAdded;
  final Value<int> rowid;
  const BookmarkedArticlesTableCompanion({
    this.articleUuid = const Value.absent(),
    this.dateAdded = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookmarkedArticlesTableCompanion.insert({
    required String articleUuid,
    this.dateAdded = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : articleUuid = Value(articleUuid);
  static Insertable<BookmarkedArticlesTableData> custom({
    Expression<String>? articleUuid,
    Expression<DateTime>? dateAdded,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (articleUuid != null) 'article_uuid': articleUuid,
      if (dateAdded != null) 'date_added': dateAdded,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookmarkedArticlesTableCompanion copyWith(
      {Value<String>? articleUuid,
      Value<DateTime>? dateAdded,
      Value<int>? rowid}) {
    return BookmarkedArticlesTableCompanion(
      articleUuid: articleUuid ?? this.articleUuid,
      dateAdded: dateAdded ?? this.dateAdded,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articleUuid.present) {
      map['article_uuid'] = Variable<String>(articleUuid.value);
    }
    if (dateAdded.present) {
      map['date_added'] = Variable<DateTime>(dateAdded.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarkedArticlesTableCompanion(')
          ..write('articleUuid: $articleUuid, ')
          ..write('dateAdded: $dateAdded, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ArticlesTableTable articlesTable = $ArticlesTableTable(this);
  late final $SectionsTableTable sectionsTable = $SectionsTableTable(this);
  late final $HomeArticlesTableTable homeArticlesTable =
      $HomeArticlesTableTable(this);
  late final $RecommendedArticlesTableTable recommendedArticlesTable =
      $RecommendedArticlesTableTable(this);
  late final $BookmarkedArticlesTableTable bookmarkedArticlesTable =
      $BookmarkedArticlesTableTable(this);
  late final ArticlesDao articlesDao = ArticlesDao(this as AppDatabase);
  late final SectionsDao sectionsDao = SectionsDao(this as AppDatabase);
  late final HomeArticlesDao homeArticlesDao =
      HomeArticlesDao(this as AppDatabase);
  late final RecommendedArticlesDao recommendedArticlesDao =
      RecommendedArticlesDao(this as AppDatabase);
  late final BookmarkedArticlesDao bookmarkedArticlesDao =
      BookmarkedArticlesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        articlesTable,
        sectionsTable,
        homeArticlesTable,
        recommendedArticlesTable,
        bookmarkedArticlesTable
      ];
}

typedef $$ArticlesTableTableCreateCompanionBuilder = ArticlesTableCompanion
    Function({
  required String uuid,
  required String section,
  Value<String?> subsection,
  required String title,
  required String abstract,
  required String url,
  required String uri,
  Value<String?> byline,
  Value<List<String>?> desFacet,
  Value<List<String>?> orgFacet,
  Value<List<String>?> perFacet,
  Value<List<String>?> geoFacet,
  Value<List<MediaModel>?> media,
  Value<int> rowid,
});
typedef $$ArticlesTableTableUpdateCompanionBuilder = ArticlesTableCompanion
    Function({
  Value<String> uuid,
  Value<String> section,
  Value<String?> subsection,
  Value<String> title,
  Value<String> abstract,
  Value<String> url,
  Value<String> uri,
  Value<String?> byline,
  Value<List<String>?> desFacet,
  Value<List<String>?> orgFacet,
  Value<List<String>?> perFacet,
  Value<List<String>?> geoFacet,
  Value<List<MediaModel>?> media,
  Value<int> rowid,
});

final class $$ArticlesTableTableReferences extends BaseReferences<_$AppDatabase,
    $ArticlesTableTable, ArticlesTableData> {
  $$ArticlesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$HomeArticlesTableTable,
      List<HomeArticlesTableData>> _homeArticlesTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.homeArticlesTable,
          aliasName: $_aliasNameGenerator(
              db.articlesTable.uuid, db.homeArticlesTable.articleUuid));

  $$HomeArticlesTableTableProcessedTableManager get homeArticlesTableRefs {
    final manager =
        $$HomeArticlesTableTableTableManager($_db, $_db.homeArticlesTable)
            .filter((f) => f.articleUuid.uuid($_item.uuid));

    final cache =
        $_typedResult.readTableOrNull(_homeArticlesTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$RecommendedArticlesTableTable,
      List<RecommendedArticlesTableData>> _recommendedArticlesTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.recommendedArticlesTable,
          aliasName: $_aliasNameGenerator(
              db.articlesTable.uuid, db.recommendedArticlesTable.articleUuid));

  $$RecommendedArticlesTableTableProcessedTableManager
      get recommendedArticlesTableRefs {
    final manager = $$RecommendedArticlesTableTableTableManager(
            $_db, $_db.recommendedArticlesTable)
        .filter((f) => f.articleUuid.uuid($_item.uuid));

    final cache =
        $_typedResult.readTableOrNull(_recommendedArticlesTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$BookmarkedArticlesTableTable,
      List<BookmarkedArticlesTableData>> _bookmarkedArticlesTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.bookmarkedArticlesTable,
          aliasName: $_aliasNameGenerator(
              db.articlesTable.uuid, db.bookmarkedArticlesTable.articleUuid));

  $$BookmarkedArticlesTableTableProcessedTableManager
      get bookmarkedArticlesTableRefs {
    final manager = $$BookmarkedArticlesTableTableTableManager(
            $_db, $_db.bookmarkedArticlesTable)
        .filter((f) => f.articleUuid.uuid($_item.uuid));

    final cache =
        $_typedResult.readTableOrNull(_bookmarkedArticlesTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ArticlesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ArticlesTableTable> {
  $$ArticlesTableTableFilterComposer(super.$state);
  ColumnFilters<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get section => $state.composableBuilder(
      column: $state.table.section,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subsection => $state.composableBuilder(
      column: $state.table.subsection,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get abstract => $state.composableBuilder(
      column: $state.table.abstract,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get uri => $state.composableBuilder(
      column: $state.table.uri,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get byline => $state.composableBuilder(
      column: $state.table.byline,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get desFacet => $state.composableBuilder(
          column: $state.table.desFacet,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get orgFacet => $state.composableBuilder(
          column: $state.table.orgFacet,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get perFacet => $state.composableBuilder(
          column: $state.table.perFacet,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get geoFacet => $state.composableBuilder(
          column: $state.table.geoFacet,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<MediaModel>?, List<MediaModel>, String>
      get media => $state.composableBuilder(
          column: $state.table.media,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ComposableFilter homeArticlesTableRefs(
      ComposableFilter Function($$HomeArticlesTableTableFilterComposer f) f) {
    final $$HomeArticlesTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.uuid,
            referencedTable: $state.db.homeArticlesTable,
            getReferencedColumn: (t) => t.articleUuid,
            builder: (joinBuilder, parentComposers) =>
                $$HomeArticlesTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.homeArticlesTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter recommendedArticlesTableRefs(
      ComposableFilter Function($$RecommendedArticlesTableTableFilterComposer f)
          f) {
    final $$RecommendedArticlesTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.uuid,
            referencedTable: $state.db.recommendedArticlesTable,
            getReferencedColumn: (t) => t.articleUuid,
            builder: (joinBuilder, parentComposers) =>
                $$RecommendedArticlesTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.recommendedArticlesTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }

  ComposableFilter bookmarkedArticlesTableRefs(
      ComposableFilter Function($$BookmarkedArticlesTableTableFilterComposer f)
          f) {
    final $$BookmarkedArticlesTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.uuid,
            referencedTable: $state.db.bookmarkedArticlesTable,
            getReferencedColumn: (t) => t.articleUuid,
            builder: (joinBuilder, parentComposers) =>
                $$BookmarkedArticlesTableTableFilterComposer(ComposerState(
                    $state.db,
                    $state.db.bookmarkedArticlesTable,
                    joinBuilder,
                    parentComposers)));
    return f(composer);
  }
}

class $$ArticlesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ArticlesTableTable> {
  $$ArticlesTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get section => $state.composableBuilder(
      column: $state.table.section,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subsection => $state.composableBuilder(
      column: $state.table.subsection,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get abstract => $state.composableBuilder(
      column: $state.table.abstract,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get uri => $state.composableBuilder(
      column: $state.table.uri,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get byline => $state.composableBuilder(
      column: $state.table.byline,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get desFacet => $state.composableBuilder(
      column: $state.table.desFacet,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get orgFacet => $state.composableBuilder(
      column: $state.table.orgFacet,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get perFacet => $state.composableBuilder(
      column: $state.table.perFacet,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get geoFacet => $state.composableBuilder(
      column: $state.table.geoFacet,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get media => $state.composableBuilder(
      column: $state.table.media,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ArticlesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ArticlesTableTable,
    ArticlesTableData,
    $$ArticlesTableTableFilterComposer,
    $$ArticlesTableTableOrderingComposer,
    $$ArticlesTableTableCreateCompanionBuilder,
    $$ArticlesTableTableUpdateCompanionBuilder,
    (ArticlesTableData, $$ArticlesTableTableReferences),
    ArticlesTableData,
    PrefetchHooks Function(
        {bool homeArticlesTableRefs,
        bool recommendedArticlesTableRefs,
        bool bookmarkedArticlesTableRefs})> {
  $$ArticlesTableTableTableManager(_$AppDatabase db, $ArticlesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ArticlesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ArticlesTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> uuid = const Value.absent(),
            Value<String> section = const Value.absent(),
            Value<String?> subsection = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> abstract = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> uri = const Value.absent(),
            Value<String?> byline = const Value.absent(),
            Value<List<String>?> desFacet = const Value.absent(),
            Value<List<String>?> orgFacet = const Value.absent(),
            Value<List<String>?> perFacet = const Value.absent(),
            Value<List<String>?> geoFacet = const Value.absent(),
            Value<List<MediaModel>?> media = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ArticlesTableCompanion(
            uuid: uuid,
            section: section,
            subsection: subsection,
            title: title,
            abstract: abstract,
            url: url,
            uri: uri,
            byline: byline,
            desFacet: desFacet,
            orgFacet: orgFacet,
            perFacet: perFacet,
            geoFacet: geoFacet,
            media: media,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String uuid,
            required String section,
            Value<String?> subsection = const Value.absent(),
            required String title,
            required String abstract,
            required String url,
            required String uri,
            Value<String?> byline = const Value.absent(),
            Value<List<String>?> desFacet = const Value.absent(),
            Value<List<String>?> orgFacet = const Value.absent(),
            Value<List<String>?> perFacet = const Value.absent(),
            Value<List<String>?> geoFacet = const Value.absent(),
            Value<List<MediaModel>?> media = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ArticlesTableCompanion.insert(
            uuid: uuid,
            section: section,
            subsection: subsection,
            title: title,
            abstract: abstract,
            url: url,
            uri: uri,
            byline: byline,
            desFacet: desFacet,
            orgFacet: orgFacet,
            perFacet: perFacet,
            geoFacet: geoFacet,
            media: media,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ArticlesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {homeArticlesTableRefs = false,
              recommendedArticlesTableRefs = false,
              bookmarkedArticlesTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (homeArticlesTableRefs) db.homeArticlesTable,
                if (recommendedArticlesTableRefs) db.recommendedArticlesTable,
                if (bookmarkedArticlesTableRefs) db.bookmarkedArticlesTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (homeArticlesTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ArticlesTableTableReferences
                            ._homeArticlesTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ArticlesTableTableReferences(db, table, p0)
                                .homeArticlesTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.articleUuid == item.uuid),
                        typedResults: items),
                  if (recommendedArticlesTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ArticlesTableTableReferences
                            ._recommendedArticlesTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ArticlesTableTableReferences(db, table, p0)
                                .recommendedArticlesTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.articleUuid == item.uuid),
                        typedResults: items),
                  if (bookmarkedArticlesTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ArticlesTableTableReferences
                            ._bookmarkedArticlesTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ArticlesTableTableReferences(db, table, p0)
                                .bookmarkedArticlesTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.articleUuid == item.uuid),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ArticlesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ArticlesTableTable,
    ArticlesTableData,
    $$ArticlesTableTableFilterComposer,
    $$ArticlesTableTableOrderingComposer,
    $$ArticlesTableTableCreateCompanionBuilder,
    $$ArticlesTableTableUpdateCompanionBuilder,
    (ArticlesTableData, $$ArticlesTableTableReferences),
    ArticlesTableData,
    PrefetchHooks Function(
        {bool homeArticlesTableRefs,
        bool recommendedArticlesTableRefs,
        bool bookmarkedArticlesTableRefs})>;
typedef $$SectionsTableTableCreateCompanionBuilder = SectionsTableCompanion
    Function({
  required String type,
  Value<bool> isSelected,
  Value<int> rowid,
});
typedef $$SectionsTableTableUpdateCompanionBuilder = SectionsTableCompanion
    Function({
  Value<String> type,
  Value<bool> isSelected,
  Value<int> rowid,
});

class $$SectionsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SectionsTableTable> {
  $$SectionsTableTableFilterComposer(super.$state);
  ColumnFilters<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isSelected => $state.composableBuilder(
      column: $state.table.isSelected,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SectionsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SectionsTableTable> {
  $$SectionsTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isSelected => $state.composableBuilder(
      column: $state.table.isSelected,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$SectionsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SectionsTableTable,
    SectionsTableData,
    $$SectionsTableTableFilterComposer,
    $$SectionsTableTableOrderingComposer,
    $$SectionsTableTableCreateCompanionBuilder,
    $$SectionsTableTableUpdateCompanionBuilder,
    (
      SectionsTableData,
      BaseReferences<_$AppDatabase, $SectionsTableTable, SectionsTableData>
    ),
    SectionsTableData,
    PrefetchHooks Function()> {
  $$SectionsTableTableTableManager(_$AppDatabase db, $SectionsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SectionsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SectionsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> type = const Value.absent(),
            Value<bool> isSelected = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectionsTableCompanion(
            type: type,
            isSelected: isSelected,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String type,
            Value<bool> isSelected = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SectionsTableCompanion.insert(
            type: type,
            isSelected: isSelected,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SectionsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SectionsTableTable,
    SectionsTableData,
    $$SectionsTableTableFilterComposer,
    $$SectionsTableTableOrderingComposer,
    $$SectionsTableTableCreateCompanionBuilder,
    $$SectionsTableTableUpdateCompanionBuilder,
    (
      SectionsTableData,
      BaseReferences<_$AppDatabase, $SectionsTableTable, SectionsTableData>
    ),
    SectionsTableData,
    PrefetchHooks Function()>;
typedef $$HomeArticlesTableTableCreateCompanionBuilder
    = HomeArticlesTableCompanion Function({
  required String articleUuid,
  Value<DateTime> dateAdded,
  Value<int> rowid,
});
typedef $$HomeArticlesTableTableUpdateCompanionBuilder
    = HomeArticlesTableCompanion Function({
  Value<String> articleUuid,
  Value<DateTime> dateAdded,
  Value<int> rowid,
});

final class $$HomeArticlesTableTableReferences extends BaseReferences<
    _$AppDatabase, $HomeArticlesTableTable, HomeArticlesTableData> {
  $$HomeArticlesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ArticlesTableTable _articleUuidTable(_$AppDatabase db) =>
      db.articlesTable.createAlias($_aliasNameGenerator(
          db.homeArticlesTable.articleUuid, db.articlesTable.uuid));

  $$ArticlesTableTableProcessedTableManager? get articleUuid {
    if ($_item.articleUuid == null) return null;
    final manager = $$ArticlesTableTableTableManager($_db, $_db.articlesTable)
        .filter((f) => f.uuid($_item.articleUuid!));
    final item = $_typedResult.readTableOrNull(_articleUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$HomeArticlesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $HomeArticlesTableTable> {
  $$HomeArticlesTableTableFilterComposer(super.$state);
  ColumnFilters<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$ArticlesTableTableFilterComposer get articleUuid {
    final $$ArticlesTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.articleUuid,
        referencedTable: $state.db.articlesTable,
        getReferencedColumn: (t) => t.uuid,
        builder: (joinBuilder, parentComposers) =>
            $$ArticlesTableTableFilterComposer(ComposerState($state.db,
                $state.db.articlesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$HomeArticlesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $HomeArticlesTableTable> {
  $$HomeArticlesTableTableOrderingComposer(super.$state);
  ColumnOrderings<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$ArticlesTableTableOrderingComposer get articleUuid {
    final $$ArticlesTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.articleUuid,
            referencedTable: $state.db.articlesTable,
            getReferencedColumn: (t) => t.uuid,
            builder: (joinBuilder, parentComposers) =>
                $$ArticlesTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.articlesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$HomeArticlesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HomeArticlesTableTable,
    HomeArticlesTableData,
    $$HomeArticlesTableTableFilterComposer,
    $$HomeArticlesTableTableOrderingComposer,
    $$HomeArticlesTableTableCreateCompanionBuilder,
    $$HomeArticlesTableTableUpdateCompanionBuilder,
    (HomeArticlesTableData, $$HomeArticlesTableTableReferences),
    HomeArticlesTableData,
    PrefetchHooks Function({bool articleUuid})> {
  $$HomeArticlesTableTableTableManager(
      _$AppDatabase db, $HomeArticlesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$HomeArticlesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$HomeArticlesTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> articleUuid = const Value.absent(),
            Value<DateTime> dateAdded = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              HomeArticlesTableCompanion(
            articleUuid: articleUuid,
            dateAdded: dateAdded,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String articleUuid,
            Value<DateTime> dateAdded = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              HomeArticlesTableCompanion.insert(
            articleUuid: articleUuid,
            dateAdded: dateAdded,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$HomeArticlesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({articleUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (articleUuid) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.articleUuid,
                    referencedTable: $$HomeArticlesTableTableReferences
                        ._articleUuidTable(db),
                    referencedColumn: $$HomeArticlesTableTableReferences
                        ._articleUuidTable(db)
                        .uuid,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$HomeArticlesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HomeArticlesTableTable,
    HomeArticlesTableData,
    $$HomeArticlesTableTableFilterComposer,
    $$HomeArticlesTableTableOrderingComposer,
    $$HomeArticlesTableTableCreateCompanionBuilder,
    $$HomeArticlesTableTableUpdateCompanionBuilder,
    (HomeArticlesTableData, $$HomeArticlesTableTableReferences),
    HomeArticlesTableData,
    PrefetchHooks Function({bool articleUuid})>;
typedef $$RecommendedArticlesTableTableCreateCompanionBuilder
    = RecommendedArticlesTableCompanion Function({
  required String articleUuid,
  Value<DateTime> dateAdded,
  required int period,
  Value<int> rowid,
});
typedef $$RecommendedArticlesTableTableUpdateCompanionBuilder
    = RecommendedArticlesTableCompanion Function({
  Value<String> articleUuid,
  Value<DateTime> dateAdded,
  Value<int> period,
  Value<int> rowid,
});

final class $$RecommendedArticlesTableTableReferences extends BaseReferences<
    _$AppDatabase,
    $RecommendedArticlesTableTable,
    RecommendedArticlesTableData> {
  $$RecommendedArticlesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ArticlesTableTable _articleUuidTable(_$AppDatabase db) =>
      db.articlesTable.createAlias($_aliasNameGenerator(
          db.recommendedArticlesTable.articleUuid, db.articlesTable.uuid));

  $$ArticlesTableTableProcessedTableManager? get articleUuid {
    if ($_item.articleUuid == null) return null;
    final manager = $$ArticlesTableTableTableManager($_db, $_db.articlesTable)
        .filter((f) => f.uuid($_item.articleUuid!));
    final item = $_typedResult.readTableOrNull(_articleUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$RecommendedArticlesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $RecommendedArticlesTableTable> {
  $$RecommendedArticlesTableTableFilterComposer(super.$state);
  ColumnFilters<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get period => $state.composableBuilder(
      column: $state.table.period,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$ArticlesTableTableFilterComposer get articleUuid {
    final $$ArticlesTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.articleUuid,
        referencedTable: $state.db.articlesTable,
        getReferencedColumn: (t) => t.uuid,
        builder: (joinBuilder, parentComposers) =>
            $$ArticlesTableTableFilterComposer(ComposerState($state.db,
                $state.db.articlesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$RecommendedArticlesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $RecommendedArticlesTableTable> {
  $$RecommendedArticlesTableTableOrderingComposer(super.$state);
  ColumnOrderings<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get period => $state.composableBuilder(
      column: $state.table.period,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$ArticlesTableTableOrderingComposer get articleUuid {
    final $$ArticlesTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.articleUuid,
            referencedTable: $state.db.articlesTable,
            getReferencedColumn: (t) => t.uuid,
            builder: (joinBuilder, parentComposers) =>
                $$ArticlesTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.articlesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$RecommendedArticlesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RecommendedArticlesTableTable,
    RecommendedArticlesTableData,
    $$RecommendedArticlesTableTableFilterComposer,
    $$RecommendedArticlesTableTableOrderingComposer,
    $$RecommendedArticlesTableTableCreateCompanionBuilder,
    $$RecommendedArticlesTableTableUpdateCompanionBuilder,
    (RecommendedArticlesTableData, $$RecommendedArticlesTableTableReferences),
    RecommendedArticlesTableData,
    PrefetchHooks Function({bool articleUuid})> {
  $$RecommendedArticlesTableTableTableManager(
      _$AppDatabase db, $RecommendedArticlesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$RecommendedArticlesTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$RecommendedArticlesTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> articleUuid = const Value.absent(),
            Value<DateTime> dateAdded = const Value.absent(),
            Value<int> period = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RecommendedArticlesTableCompanion(
            articleUuid: articleUuid,
            dateAdded: dateAdded,
            period: period,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String articleUuid,
            Value<DateTime> dateAdded = const Value.absent(),
            required int period,
            Value<int> rowid = const Value.absent(),
          }) =>
              RecommendedArticlesTableCompanion.insert(
            articleUuid: articleUuid,
            dateAdded: dateAdded,
            period: period,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$RecommendedArticlesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({articleUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (articleUuid) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.articleUuid,
                    referencedTable: $$RecommendedArticlesTableTableReferences
                        ._articleUuidTable(db),
                    referencedColumn: $$RecommendedArticlesTableTableReferences
                        ._articleUuidTable(db)
                        .uuid,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$RecommendedArticlesTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $RecommendedArticlesTableTable,
        RecommendedArticlesTableData,
        $$RecommendedArticlesTableTableFilterComposer,
        $$RecommendedArticlesTableTableOrderingComposer,
        $$RecommendedArticlesTableTableCreateCompanionBuilder,
        $$RecommendedArticlesTableTableUpdateCompanionBuilder,
        (
          RecommendedArticlesTableData,
          $$RecommendedArticlesTableTableReferences
        ),
        RecommendedArticlesTableData,
        PrefetchHooks Function({bool articleUuid})>;
typedef $$BookmarkedArticlesTableTableCreateCompanionBuilder
    = BookmarkedArticlesTableCompanion Function({
  required String articleUuid,
  Value<DateTime> dateAdded,
  Value<int> rowid,
});
typedef $$BookmarkedArticlesTableTableUpdateCompanionBuilder
    = BookmarkedArticlesTableCompanion Function({
  Value<String> articleUuid,
  Value<DateTime> dateAdded,
  Value<int> rowid,
});

final class $$BookmarkedArticlesTableTableReferences extends BaseReferences<
    _$AppDatabase, $BookmarkedArticlesTableTable, BookmarkedArticlesTableData> {
  $$BookmarkedArticlesTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ArticlesTableTable _articleUuidTable(_$AppDatabase db) =>
      db.articlesTable.createAlias($_aliasNameGenerator(
          db.bookmarkedArticlesTable.articleUuid, db.articlesTable.uuid));

  $$ArticlesTableTableProcessedTableManager? get articleUuid {
    if ($_item.articleUuid == null) return null;
    final manager = $$ArticlesTableTableTableManager($_db, $_db.articlesTable)
        .filter((f) => f.uuid($_item.articleUuid!));
    final item = $_typedResult.readTableOrNull(_articleUuidTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$BookmarkedArticlesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BookmarkedArticlesTableTable> {
  $$BookmarkedArticlesTableTableFilterComposer(super.$state);
  ColumnFilters<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$ArticlesTableTableFilterComposer get articleUuid {
    final $$ArticlesTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.articleUuid,
        referencedTable: $state.db.articlesTable,
        getReferencedColumn: (t) => t.uuid,
        builder: (joinBuilder, parentComposers) =>
            $$ArticlesTableTableFilterComposer(ComposerState($state.db,
                $state.db.articlesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$BookmarkedArticlesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BookmarkedArticlesTableTable> {
  $$BookmarkedArticlesTableTableOrderingComposer(super.$state);
  ColumnOrderings<DateTime> get dateAdded => $state.composableBuilder(
      column: $state.table.dateAdded,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$ArticlesTableTableOrderingComposer get articleUuid {
    final $$ArticlesTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.articleUuid,
            referencedTable: $state.db.articlesTable,
            getReferencedColumn: (t) => t.uuid,
            builder: (joinBuilder, parentComposers) =>
                $$ArticlesTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.articlesTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$BookmarkedArticlesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookmarkedArticlesTableTable,
    BookmarkedArticlesTableData,
    $$BookmarkedArticlesTableTableFilterComposer,
    $$BookmarkedArticlesTableTableOrderingComposer,
    $$BookmarkedArticlesTableTableCreateCompanionBuilder,
    $$BookmarkedArticlesTableTableUpdateCompanionBuilder,
    (BookmarkedArticlesTableData, $$BookmarkedArticlesTableTableReferences),
    BookmarkedArticlesTableData,
    PrefetchHooks Function({bool articleUuid})> {
  $$BookmarkedArticlesTableTableTableManager(
      _$AppDatabase db, $BookmarkedArticlesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$BookmarkedArticlesTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$BookmarkedArticlesTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> articleUuid = const Value.absent(),
            Value<DateTime> dateAdded = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BookmarkedArticlesTableCompanion(
            articleUuid: articleUuid,
            dateAdded: dateAdded,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String articleUuid,
            Value<DateTime> dateAdded = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BookmarkedArticlesTableCompanion.insert(
            articleUuid: articleUuid,
            dateAdded: dateAdded,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BookmarkedArticlesTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({articleUuid = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (articleUuid) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.articleUuid,
                    referencedTable: $$BookmarkedArticlesTableTableReferences
                        ._articleUuidTable(db),
                    referencedColumn: $$BookmarkedArticlesTableTableReferences
                        ._articleUuidTable(db)
                        .uuid,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$BookmarkedArticlesTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $BookmarkedArticlesTableTable,
        BookmarkedArticlesTableData,
        $$BookmarkedArticlesTableTableFilterComposer,
        $$BookmarkedArticlesTableTableOrderingComposer,
        $$BookmarkedArticlesTableTableCreateCompanionBuilder,
        $$BookmarkedArticlesTableTableUpdateCompanionBuilder,
        (BookmarkedArticlesTableData, $$BookmarkedArticlesTableTableReferences),
        BookmarkedArticlesTableData,
        PrefetchHooks Function({bool articleUuid})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ArticlesTableTableTableManager get articlesTable =>
      $$ArticlesTableTableTableManager(_db, _db.articlesTable);
  $$SectionsTableTableTableManager get sectionsTable =>
      $$SectionsTableTableTableManager(_db, _db.sectionsTable);
  $$HomeArticlesTableTableTableManager get homeArticlesTable =>
      $$HomeArticlesTableTableTableManager(_db, _db.homeArticlesTable);
  $$RecommendedArticlesTableTableTableManager get recommendedArticlesTable =>
      $$RecommendedArticlesTableTableTableManager(
          _db, _db.recommendedArticlesTable);
  $$BookmarkedArticlesTableTableTableManager get bookmarkedArticlesTable =>
      $$BookmarkedArticlesTableTableTableManager(
          _db, _db.bookmarkedArticlesTable);
}
