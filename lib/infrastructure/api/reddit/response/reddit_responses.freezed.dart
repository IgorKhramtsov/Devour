// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reddit_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RedditResponse<T> _$RedditResponseFromJson<T>(Map<String, dynamic> json) {
  return _RedditResponse<T>.fromJson(json);
}

/// @nodoc
class _$RedditResponseTearOff {
  const _$RedditResponseTearOff();

  _RedditResponse<T> call<T>(
      {required String kind, @RRDataConverter() required T data}) {
    return _RedditResponse<T>(
      kind: kind,
      data: data,
    );
  }

  RedditResponse<T> fromJson<T>(Map<String, Object> json) {
    return RedditResponse<T>.fromJson(json);
  }
}

/// @nodoc
const $RedditResponse = _$RedditResponseTearOff();

/// @nodoc
mixin _$RedditResponse<T> {
  String get kind => throw _privateConstructorUsedError;
  @RRDataConverter()
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditResponseCopyWith<T, RedditResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditResponseCopyWith<T, $Res> {
  factory $RedditResponseCopyWith(
          RedditResponse<T> value, $Res Function(RedditResponse<T>) then) =
      _$RedditResponseCopyWithImpl<T, $Res>;
  $Res call({String kind, @RRDataConverter() T data});
}

/// @nodoc
class _$RedditResponseCopyWithImpl<T, $Res>
    implements $RedditResponseCopyWith<T, $Res> {
  _$RedditResponseCopyWithImpl(this._value, this._then);

  final RedditResponse<T> _value;
  // ignore: unused_field
  final $Res Function(RedditResponse<T>) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$RedditResponseCopyWith<T, $Res>
    implements $RedditResponseCopyWith<T, $Res> {
  factory _$RedditResponseCopyWith(
          _RedditResponse<T> value, $Res Function(_RedditResponse<T>) then) =
      __$RedditResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({String kind, @RRDataConverter() T data});
}

/// @nodoc
class __$RedditResponseCopyWithImpl<T, $Res>
    extends _$RedditResponseCopyWithImpl<T, $Res>
    implements _$RedditResponseCopyWith<T, $Res> {
  __$RedditResponseCopyWithImpl(
      _RedditResponse<T> _value, $Res Function(_RedditResponse<T>) _then)
      : super(_value, (v) => _then(v as _RedditResponse<T>));

  @override
  _RedditResponse<T> get _value => super._value as _RedditResponse<T>;

  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_RedditResponse<T>(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditResponse<T> implements _RedditResponse<T> {
  const _$_RedditResponse(
      {required this.kind, @RRDataConverter() required this.data});

  factory _$_RedditResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RedditResponseFromJson(json);

  @override
  final String kind;
  @override
  @RRDataConverter()
  final T data;

  @override
  String toString() {
    return 'RedditResponse<$T>(kind: $kind, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditResponse<T> &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$RedditResponseCopyWith<T, _RedditResponse<T>> get copyWith =>
      __$RedditResponseCopyWithImpl<T, _RedditResponse<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditResponseToJson(this);
  }
}

abstract class _RedditResponse<T> implements RedditResponse<T> {
  const factory _RedditResponse(
      {required String kind,
      @RRDataConverter() required T data}) = _$_RedditResponse<T>;

  factory _RedditResponse.fromJson(Map<String, dynamic> json) =
      _$_RedditResponse<T>.fromJson;

  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  @RRDataConverter()
  T get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditResponseCopyWith<T, _RedditResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

RedditListingResponse<T> _$RedditListingResponseFromJson<T>(
    Map<String, dynamic> json) {
  return _RedditListingResponse<T>.fromJson(json);
}

/// @nodoc
class _$RedditListingResponseTearOff {
  const _$RedditListingResponseTearOff();

  _RedditListingResponse<T> call<T>(
      {@JsonKey(name: 'after') required String after,
      @JsonKey(name: 'dist') required int dist,
      @JsonKey(name: 'modhash') String? modhash,
      @JsonKey(name: 'geo_filter') Object? geo_filter,
      @JsonKey(name: 'children') @RRDataConverter() required List<T> children,
      @JsonKey(name: 'before') String? before}) {
    return _RedditListingResponse<T>(
      after: after,
      dist: dist,
      modhash: modhash,
      geo_filter: geo_filter,
      children: children,
      before: before,
    );
  }

  RedditListingResponse<T> fromJson<T>(Map<String, Object> json) {
    return RedditListingResponse<T>.fromJson(json);
  }
}

/// @nodoc
const $RedditListingResponse = _$RedditListingResponseTearOff();

/// @nodoc
mixin _$RedditListingResponse<T> {
  @JsonKey(name: 'after')
  String get after => throw _privateConstructorUsedError; // "t3_plk79v"
  @JsonKey(name: 'dist')
  int get dist => throw _privateConstructorUsedError; // 27
  @JsonKey(name: 'modhash')
  String? get modhash => throw _privateConstructorUsedError; // null
  @JsonKey(name: 'geo_filter')
  Object? get geo_filter => throw _privateConstructorUsedError; // null
  @JsonKey(name: 'children')
  @RRDataConverter()
  List<T> get children => throw _privateConstructorUsedError; // List (27 items)
  @JsonKey(name: 'before')
  String? get before => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditListingResponseCopyWith<T, RedditListingResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditListingResponseCopyWith<T, $Res> {
  factory $RedditListingResponseCopyWith(RedditListingResponse<T> value,
          $Res Function(RedditListingResponse<T>) then) =
      _$RedditListingResponseCopyWithImpl<T, $Res>;
  $Res call(
      {@JsonKey(name: 'after') String after,
      @JsonKey(name: 'dist') int dist,
      @JsonKey(name: 'modhash') String? modhash,
      @JsonKey(name: 'geo_filter') Object? geo_filter,
      @JsonKey(name: 'children') @RRDataConverter() List<T> children,
      @JsonKey(name: 'before') String? before});
}

/// @nodoc
class _$RedditListingResponseCopyWithImpl<T, $Res>
    implements $RedditListingResponseCopyWith<T, $Res> {
  _$RedditListingResponseCopyWithImpl(this._value, this._then);

  final RedditListingResponse<T> _value;
  // ignore: unused_field
  final $Res Function(RedditListingResponse<T>) _then;

  @override
  $Res call({
    Object? after = freezed,
    Object? dist = freezed,
    Object? modhash = freezed,
    Object? geo_filter = freezed,
    Object? children = freezed,
    Object? before = freezed,
  }) {
    return _then(_value.copyWith(
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
      dist: dist == freezed
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as int,
      modhash: modhash == freezed
          ? _value.modhash
          : modhash // ignore: cast_nullable_to_non_nullable
              as String?,
      geo_filter: geo_filter == freezed ? _value.geo_filter : geo_filter,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<T>,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RedditListingResponseCopyWith<T, $Res>
    implements $RedditListingResponseCopyWith<T, $Res> {
  factory _$RedditListingResponseCopyWith(_RedditListingResponse<T> value,
          $Res Function(_RedditListingResponse<T>) then) =
      __$RedditListingResponseCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {@JsonKey(name: 'after') String after,
      @JsonKey(name: 'dist') int dist,
      @JsonKey(name: 'modhash') String? modhash,
      @JsonKey(name: 'geo_filter') Object? geo_filter,
      @JsonKey(name: 'children') @RRDataConverter() List<T> children,
      @JsonKey(name: 'before') String? before});
}

/// @nodoc
class __$RedditListingResponseCopyWithImpl<T, $Res>
    extends _$RedditListingResponseCopyWithImpl<T, $Res>
    implements _$RedditListingResponseCopyWith<T, $Res> {
  __$RedditListingResponseCopyWithImpl(_RedditListingResponse<T> _value,
      $Res Function(_RedditListingResponse<T>) _then)
      : super(_value, (v) => _then(v as _RedditListingResponse<T>));

  @override
  _RedditListingResponse<T> get _value =>
      super._value as _RedditListingResponse<T>;

  @override
  $Res call({
    Object? after = freezed,
    Object? dist = freezed,
    Object? modhash = freezed,
    Object? geo_filter = freezed,
    Object? children = freezed,
    Object? before = freezed,
  }) {
    return _then(_RedditListingResponse<T>(
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String,
      dist: dist == freezed
          ? _value.dist
          : dist // ignore: cast_nullable_to_non_nullable
              as int,
      modhash: modhash == freezed
          ? _value.modhash
          : modhash // ignore: cast_nullable_to_non_nullable
              as String?,
      geo_filter: geo_filter == freezed ? _value.geo_filter : geo_filter,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<T>,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditListingResponse<T> implements _RedditListingResponse<T> {
  _$_RedditListingResponse(
      {@JsonKey(name: 'after') required this.after,
      @JsonKey(name: 'dist') required this.dist,
      @JsonKey(name: 'modhash') this.modhash,
      @JsonKey(name: 'geo_filter') this.geo_filter,
      @JsonKey(name: 'children') @RRDataConverter() required this.children,
      @JsonKey(name: 'before') this.before});

  factory _$_RedditListingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RedditListingResponseFromJson(json);

  @override
  @JsonKey(name: 'after')
  final String after;
  @override // "t3_plk79v"
  @JsonKey(name: 'dist')
  final int dist;
  @override // 27
  @JsonKey(name: 'modhash')
  final String? modhash;
  @override // null
  @JsonKey(name: 'geo_filter')
  final Object? geo_filter;
  @override // null
  @JsonKey(name: 'children')
  @RRDataConverter()
  final List<T> children;
  @override // List (27 items)
  @JsonKey(name: 'before')
  final String? before;

  @override
  String toString() {
    return 'RedditListingResponse<$T>(after: $after, dist: $dist, modhash: $modhash, geo_filter: $geo_filter, children: $children, before: $before)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditListingResponse<T> &&
            (identical(other.after, after) ||
                const DeepCollectionEquality().equals(other.after, after)) &&
            (identical(other.dist, dist) ||
                const DeepCollectionEquality().equals(other.dist, dist)) &&
            (identical(other.modhash, modhash) ||
                const DeepCollectionEquality()
                    .equals(other.modhash, modhash)) &&
            (identical(other.geo_filter, geo_filter) ||
                const DeepCollectionEquality()
                    .equals(other.geo_filter, geo_filter)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)) &&
            (identical(other.before, before) ||
                const DeepCollectionEquality().equals(other.before, before)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(after) ^
      const DeepCollectionEquality().hash(dist) ^
      const DeepCollectionEquality().hash(modhash) ^
      const DeepCollectionEquality().hash(geo_filter) ^
      const DeepCollectionEquality().hash(children) ^
      const DeepCollectionEquality().hash(before);

  @JsonKey(ignore: true)
  @override
  _$RedditListingResponseCopyWith<T, _RedditListingResponse<T>> get copyWith =>
      __$RedditListingResponseCopyWithImpl<T, _RedditListingResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditListingResponseToJson(this);
  }
}

abstract class _RedditListingResponse<T> implements RedditListingResponse<T> {
  factory _RedditListingResponse(
      {@JsonKey(name: 'after') required String after,
      @JsonKey(name: 'dist') required int dist,
      @JsonKey(name: 'modhash') String? modhash,
      @JsonKey(name: 'geo_filter') Object? geo_filter,
      @JsonKey(name: 'children') @RRDataConverter() required List<T> children,
      @JsonKey(name: 'before') String? before}) = _$_RedditListingResponse<T>;

  factory _RedditListingResponse.fromJson(Map<String, dynamic> json) =
      _$_RedditListingResponse<T>.fromJson;

  @override
  @JsonKey(name: 'after')
  String get after => throw _privateConstructorUsedError;
  @override // "t3_plk79v"
  @JsonKey(name: 'dist')
  int get dist => throw _privateConstructorUsedError;
  @override // 27
  @JsonKey(name: 'modhash')
  String? get modhash => throw _privateConstructorUsedError;
  @override // null
  @JsonKey(name: 'geo_filter')
  Object? get geo_filter => throw _privateConstructorUsedError;
  @override // null
  @JsonKey(name: 'children')
  @RRDataConverter()
  List<T> get children => throw _privateConstructorUsedError;
  @override // List (27 items)
  @JsonKey(name: 'before')
  String? get before => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditListingResponseCopyWith<T, _RedditListingResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

RedditPostResponse _$RedditPostResponseFromJson(Map<String, dynamic> json) {
  return _RedditPostResponse.fromJson(json);
}

/// @nodoc
class _$RedditPostResponseTearOff {
  const _$RedditPostResponseTearOff();

  _RedditPostResponse call(
      {@JsonKey(name: 'subreddit') required String subreddit,
      @JsonKey(name: 'author') required String author,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'upvote_ratio') required double upvoteRatio,
      @JsonKey(name: 'ups') required int ups,
      @JsonKey(name: 'num_comments') required int numComments,
      @JsonKey(name: 'stickied') required bool stickied,
      @JsonKey(name: 'created_utc') required double createdUtc,
      @JsonKey(name: 'is_video') required bool isVide,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'over_18') required bool over18}) {
    return _RedditPostResponse(
      subreddit: subreddit,
      author: author,
      title: title,
      upvoteRatio: upvoteRatio,
      ups: ups,
      numComments: numComments,
      stickied: stickied,
      createdUtc: createdUtc,
      isVide: isVide,
      url: url,
      over18: over18,
    );
  }

  RedditPostResponse fromJson(Map<String, Object> json) {
    return RedditPostResponse.fromJson(json);
  }
}

/// @nodoc
const $RedditPostResponse = _$RedditPostResponseTearOff();

/// @nodoc
mixin _$RedditPostResponse {
  @JsonKey(name: 'subreddit')
  String get subreddit => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'upvote_ratio')
  double get upvoteRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'ups')
  int get ups => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_comments')
  int get numComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'stickied')
  bool get stickied => throw _privateConstructorUsedError; // is 'pinned'
  @JsonKey(name: 'created_utc')
  double get createdUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_video')
  bool get isVide => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'over_18')
  bool get over18 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedditPostResponseCopyWith<RedditPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditPostResponseCopyWith<$Res> {
  factory $RedditPostResponseCopyWith(
          RedditPostResponse value, $Res Function(RedditPostResponse) then) =
      _$RedditPostResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'subreddit') String subreddit,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'upvote_ratio') double upvoteRatio,
      @JsonKey(name: 'ups') int ups,
      @JsonKey(name: 'num_comments') int numComments,
      @JsonKey(name: 'stickied') bool stickied,
      @JsonKey(name: 'created_utc') double createdUtc,
      @JsonKey(name: 'is_video') bool isVide,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'over_18') bool over18});
}

/// @nodoc
class _$RedditPostResponseCopyWithImpl<$Res>
    implements $RedditPostResponseCopyWith<$Res> {
  _$RedditPostResponseCopyWithImpl(this._value, this._then);

  final RedditPostResponse _value;
  // ignore: unused_field
  final $Res Function(RedditPostResponse) _then;

  @override
  $Res call({
    Object? subreddit = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? upvoteRatio = freezed,
    Object? ups = freezed,
    Object? numComments = freezed,
    Object? stickied = freezed,
    Object? createdUtc = freezed,
    Object? isVide = freezed,
    Object? url = freezed,
    Object? over18 = freezed,
  }) {
    return _then(_value.copyWith(
      subreddit: subreddit == freezed
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      upvoteRatio: upvoteRatio == freezed
          ? _value.upvoteRatio
          : upvoteRatio // ignore: cast_nullable_to_non_nullable
              as double,
      ups: ups == freezed
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int,
      numComments: numComments == freezed
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as int,
      stickied: stickied == freezed
          ? _value.stickied
          : stickied // ignore: cast_nullable_to_non_nullable
              as bool,
      createdUtc: createdUtc == freezed
          ? _value.createdUtc
          : createdUtc // ignore: cast_nullable_to_non_nullable
              as double,
      isVide: isVide == freezed
          ? _value.isVide
          : isVide // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      over18: over18 == freezed
          ? _value.over18
          : over18 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RedditPostResponseCopyWith<$Res>
    implements $RedditPostResponseCopyWith<$Res> {
  factory _$RedditPostResponseCopyWith(
          _RedditPostResponse value, $Res Function(_RedditPostResponse) then) =
      __$RedditPostResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'subreddit') String subreddit,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'upvote_ratio') double upvoteRatio,
      @JsonKey(name: 'ups') int ups,
      @JsonKey(name: 'num_comments') int numComments,
      @JsonKey(name: 'stickied') bool stickied,
      @JsonKey(name: 'created_utc') double createdUtc,
      @JsonKey(name: 'is_video') bool isVide,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'over_18') bool over18});
}

/// @nodoc
class __$RedditPostResponseCopyWithImpl<$Res>
    extends _$RedditPostResponseCopyWithImpl<$Res>
    implements _$RedditPostResponseCopyWith<$Res> {
  __$RedditPostResponseCopyWithImpl(
      _RedditPostResponse _value, $Res Function(_RedditPostResponse) _then)
      : super(_value, (v) => _then(v as _RedditPostResponse));

  @override
  _RedditPostResponse get _value => super._value as _RedditPostResponse;

  @override
  $Res call({
    Object? subreddit = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? upvoteRatio = freezed,
    Object? ups = freezed,
    Object? numComments = freezed,
    Object? stickied = freezed,
    Object? createdUtc = freezed,
    Object? isVide = freezed,
    Object? url = freezed,
    Object? over18 = freezed,
  }) {
    return _then(_RedditPostResponse(
      subreddit: subreddit == freezed
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      upvoteRatio: upvoteRatio == freezed
          ? _value.upvoteRatio
          : upvoteRatio // ignore: cast_nullable_to_non_nullable
              as double,
      ups: ups == freezed
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int,
      numComments: numComments == freezed
          ? _value.numComments
          : numComments // ignore: cast_nullable_to_non_nullable
              as int,
      stickied: stickied == freezed
          ? _value.stickied
          : stickied // ignore: cast_nullable_to_non_nullable
              as bool,
      createdUtc: createdUtc == freezed
          ? _value.createdUtc
          : createdUtc // ignore: cast_nullable_to_non_nullable
              as double,
      isVide: isVide == freezed
          ? _value.isVide
          : isVide // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      over18: over18 == freezed
          ? _value.over18
          : over18 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RedditPostResponse implements _RedditPostResponse {
  _$_RedditPostResponse(
      {@JsonKey(name: 'subreddit') required this.subreddit,
      @JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'upvote_ratio') required this.upvoteRatio,
      @JsonKey(name: 'ups') required this.ups,
      @JsonKey(name: 'num_comments') required this.numComments,
      @JsonKey(name: 'stickied') required this.stickied,
      @JsonKey(name: 'created_utc') required this.createdUtc,
      @JsonKey(name: 'is_video') required this.isVide,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'over_18') required this.over18});

  factory _$_RedditPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RedditPostResponseFromJson(json);

  @override
  @JsonKey(name: 'subreddit')
  final String subreddit;
  @override
  @JsonKey(name: 'author')
  final String author;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'upvote_ratio')
  final double upvoteRatio;
  @override
  @JsonKey(name: 'ups')
  final int ups;
  @override
  @JsonKey(name: 'num_comments')
  final int numComments;
  @override
  @JsonKey(name: 'stickied')
  final bool stickied;
  @override // is 'pinned'
  @JsonKey(name: 'created_utc')
  final double createdUtc;
  @override
  @JsonKey(name: 'is_video')
  final bool isVide;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'over_18')
  final bool over18;

  @override
  String toString() {
    return 'RedditPostResponse(subreddit: $subreddit, author: $author, title: $title, upvoteRatio: $upvoteRatio, ups: $ups, numComments: $numComments, stickied: $stickied, createdUtc: $createdUtc, isVide: $isVide, url: $url, over18: $over18)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditPostResponse &&
            (identical(other.subreddit, subreddit) ||
                const DeepCollectionEquality()
                    .equals(other.subreddit, subreddit)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.upvoteRatio, upvoteRatio) ||
                const DeepCollectionEquality()
                    .equals(other.upvoteRatio, upvoteRatio)) &&
            (identical(other.ups, ups) ||
                const DeepCollectionEquality().equals(other.ups, ups)) &&
            (identical(other.numComments, numComments) ||
                const DeepCollectionEquality()
                    .equals(other.numComments, numComments)) &&
            (identical(other.stickied, stickied) ||
                const DeepCollectionEquality()
                    .equals(other.stickied, stickied)) &&
            (identical(other.createdUtc, createdUtc) ||
                const DeepCollectionEquality()
                    .equals(other.createdUtc, createdUtc)) &&
            (identical(other.isVide, isVide) ||
                const DeepCollectionEquality().equals(other.isVide, isVide)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.over18, over18) ||
                const DeepCollectionEquality().equals(other.over18, over18)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subreddit) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(upvoteRatio) ^
      const DeepCollectionEquality().hash(ups) ^
      const DeepCollectionEquality().hash(numComments) ^
      const DeepCollectionEquality().hash(stickied) ^
      const DeepCollectionEquality().hash(createdUtc) ^
      const DeepCollectionEquality().hash(isVide) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(over18);

  @JsonKey(ignore: true)
  @override
  _$RedditPostResponseCopyWith<_RedditPostResponse> get copyWith =>
      __$RedditPostResponseCopyWithImpl<_RedditPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RedditPostResponseToJson(this);
  }
}

abstract class _RedditPostResponse implements RedditPostResponse {
  factory _RedditPostResponse(
      {@JsonKey(name: 'subreddit') required String subreddit,
      @JsonKey(name: 'author') required String author,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'upvote_ratio') required double upvoteRatio,
      @JsonKey(name: 'ups') required int ups,
      @JsonKey(name: 'num_comments') required int numComments,
      @JsonKey(name: 'stickied') required bool stickied,
      @JsonKey(name: 'created_utc') required double createdUtc,
      @JsonKey(name: 'is_video') required bool isVide,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'over_18') required bool over18}) = _$_RedditPostResponse;

  factory _RedditPostResponse.fromJson(Map<String, dynamic> json) =
      _$_RedditPostResponse.fromJson;

  @override
  @JsonKey(name: 'subreddit')
  String get subreddit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'upvote_ratio')
  double get upvoteRatio => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ups')
  int get ups => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'num_comments')
  int get numComments => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stickied')
  bool get stickied => throw _privateConstructorUsedError;
  @override // is 'pinned'
  @JsonKey(name: 'created_utc')
  double get createdUtc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_video')
  bool get isVide => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'over_18')
  bool get over18 => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditPostResponseCopyWith<_RedditPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
