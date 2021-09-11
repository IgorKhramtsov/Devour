// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abstract_meme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AbstractMemeModelTearOff {
  const _$AbstractMemeModelTearOff();

  _AbstractMemeModel call(
      {required String sourceLink,
      required String imageLink,
      required String title,
      required String author,
      required List<String> imagePreviews}) {
    return _AbstractMemeModel(
      sourceLink: sourceLink,
      imageLink: imageLink,
      title: title,
      author: author,
      imagePreviews: imagePreviews,
    );
  }

  RedditMemeModel reddit(
      {required String title,
      required String author,
      required String imageLink,
      required String sourceLink,
      required String subreddit,
      required int ups,
      required bool nsfw}) {
    return RedditMemeModel(
      title: title,
      author: author,
      imageLink: imageLink,
      sourceLink: sourceLink,
      subreddit: subreddit,
      ups: ups,
      nsfw: nsfw,
    );
  }
}

/// @nodoc
const $AbstractMemeModel = _$AbstractMemeModelTearOff();

/// @nodoc
mixin _$AbstractMemeModel {
  String get sourceLink => throw _privateConstructorUsedError;
  String get imageLink => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)
        $default, {
    required TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)
        reddit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)?
        $default, {
    TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)?
        reddit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)?
        $default, {
    TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)?
        reddit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value) $default, {
    required TResult Function(RedditMemeModel value) reddit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value)? $default, {
    TResult Function(RedditMemeModel value)? reddit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value)? $default, {
    TResult Function(RedditMemeModel value)? reddit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbstractMemeModelCopyWith<AbstractMemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbstractMemeModelCopyWith<$Res> {
  factory $AbstractMemeModelCopyWith(
          AbstractMemeModel value, $Res Function(AbstractMemeModel) then) =
      _$AbstractMemeModelCopyWithImpl<$Res>;
  $Res call({String sourceLink, String imageLink, String title, String author});
}

/// @nodoc
class _$AbstractMemeModelCopyWithImpl<$Res>
    implements $AbstractMemeModelCopyWith<$Res> {
  _$AbstractMemeModelCopyWithImpl(this._value, this._then);

  final AbstractMemeModel _value;
  // ignore: unused_field
  final $Res Function(AbstractMemeModel) _then;

  @override
  $Res call({
    Object? sourceLink = freezed,
    Object? imageLink = freezed,
    Object? title = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      sourceLink: sourceLink == freezed
          ? _value.sourceLink
          : sourceLink // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AbstractMemeModelCopyWith<$Res>
    implements $AbstractMemeModelCopyWith<$Res> {
  factory _$AbstractMemeModelCopyWith(
          _AbstractMemeModel value, $Res Function(_AbstractMemeModel) then) =
      __$AbstractMemeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sourceLink,
      String imageLink,
      String title,
      String author,
      List<String> imagePreviews});
}

/// @nodoc
class __$AbstractMemeModelCopyWithImpl<$Res>
    extends _$AbstractMemeModelCopyWithImpl<$Res>
    implements _$AbstractMemeModelCopyWith<$Res> {
  __$AbstractMemeModelCopyWithImpl(
      _AbstractMemeModel _value, $Res Function(_AbstractMemeModel) _then)
      : super(_value, (v) => _then(v as _AbstractMemeModel));

  @override
  _AbstractMemeModel get _value => super._value as _AbstractMemeModel;

  @override
  $Res call({
    Object? sourceLink = freezed,
    Object? imageLink = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? imagePreviews = freezed,
  }) {
    return _then(_AbstractMemeModel(
      sourceLink: sourceLink == freezed
          ? _value.sourceLink
          : sourceLink // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imagePreviews: imagePreviews == freezed
          ? _value.imagePreviews
          : imagePreviews // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AbstractMemeModel implements _AbstractMemeModel {
  _$_AbstractMemeModel(
      {required this.sourceLink,
      required this.imageLink,
      required this.title,
      required this.author,
      required this.imagePreviews});

  @override
  final String sourceLink;
  @override
  final String imageLink;
  @override
  final String title;
  @override
  final String author;
  @override
  final List<String> imagePreviews;

  @override
  String toString() {
    return 'AbstractMemeModel(sourceLink: $sourceLink, imageLink: $imageLink, title: $title, author: $author, imagePreviews: $imagePreviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AbstractMemeModel &&
            (identical(other.sourceLink, sourceLink) ||
                const DeepCollectionEquality()
                    .equals(other.sourceLink, sourceLink)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.imagePreviews, imagePreviews) ||
                const DeepCollectionEquality()
                    .equals(other.imagePreviews, imagePreviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sourceLink) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(imagePreviews);

  @JsonKey(ignore: true)
  @override
  _$AbstractMemeModelCopyWith<_AbstractMemeModel> get copyWith =>
      __$AbstractMemeModelCopyWithImpl<_AbstractMemeModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)
        $default, {
    required TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)
        reddit,
  }) {
    return $default(sourceLink, imageLink, title, author, imagePreviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)?
        $default, {
    TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)?
        reddit,
  }) {
    return $default?.call(sourceLink, imageLink, title, author, imagePreviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)?
        $default, {
    TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)?
        reddit,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(sourceLink, imageLink, title, author, imagePreviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value) $default, {
    required TResult Function(RedditMemeModel value) reddit,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value)? $default, {
    TResult Function(RedditMemeModel value)? reddit,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value)? $default, {
    TResult Function(RedditMemeModel value)? reddit,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AbstractMemeModel implements AbstractMemeModel {
  factory _AbstractMemeModel(
      {required String sourceLink,
      required String imageLink,
      required String title,
      required String author,
      required List<String> imagePreviews}) = _$_AbstractMemeModel;

  @override
  String get sourceLink => throw _privateConstructorUsedError;
  @override
  String get imageLink => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  List<String> get imagePreviews => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AbstractMemeModelCopyWith<_AbstractMemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditMemeModelCopyWith<$Res>
    implements $AbstractMemeModelCopyWith<$Res> {
  factory $RedditMemeModelCopyWith(
          RedditMemeModel value, $Res Function(RedditMemeModel) then) =
      _$RedditMemeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String author,
      String imageLink,
      String sourceLink,
      String subreddit,
      int ups,
      bool nsfw});
}

/// @nodoc
class _$RedditMemeModelCopyWithImpl<$Res>
    extends _$AbstractMemeModelCopyWithImpl<$Res>
    implements $RedditMemeModelCopyWith<$Res> {
  _$RedditMemeModelCopyWithImpl(
      RedditMemeModel _value, $Res Function(RedditMemeModel) _then)
      : super(_value, (v) => _then(v as RedditMemeModel));

  @override
  RedditMemeModel get _value => super._value as RedditMemeModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? imageLink = freezed,
    Object? sourceLink = freezed,
    Object? subreddit = freezed,
    Object? ups = freezed,
    Object? nsfw = freezed,
  }) {
    return _then(RedditMemeModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      sourceLink: sourceLink == freezed
          ? _value.sourceLink
          : sourceLink // ignore: cast_nullable_to_non_nullable
              as String,
      subreddit: subreddit == freezed
          ? _value.subreddit
          : subreddit // ignore: cast_nullable_to_non_nullable
              as String,
      ups: ups == freezed
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int,
      nsfw: nsfw == freezed
          ? _value.nsfw
          : nsfw // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RedditMemeModel implements RedditMemeModel {
  _$RedditMemeModel(
      {required this.title,
      required this.author,
      required this.imageLink,
      required this.sourceLink,
      required this.subreddit,
      required this.ups,
      required this.nsfw});

  @override
  final String title;
  @override
  final String author;
  @override
  final String imageLink;
  @override
  final String sourceLink;
  @override
  final String subreddit;
  @override
  final int ups;
  @override
  final bool nsfw;

  @override
  String toString() {
    return 'AbstractMemeModel.reddit(title: $title, author: $author, imageLink: $imageLink, sourceLink: $sourceLink, subreddit: $subreddit, ups: $ups, nsfw: $nsfw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RedditMemeModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.sourceLink, sourceLink) ||
                const DeepCollectionEquality()
                    .equals(other.sourceLink, sourceLink)) &&
            (identical(other.subreddit, subreddit) ||
                const DeepCollectionEquality()
                    .equals(other.subreddit, subreddit)) &&
            (identical(other.ups, ups) ||
                const DeepCollectionEquality().equals(other.ups, ups)) &&
            (identical(other.nsfw, nsfw) ||
                const DeepCollectionEquality().equals(other.nsfw, nsfw)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(sourceLink) ^
      const DeepCollectionEquality().hash(subreddit) ^
      const DeepCollectionEquality().hash(ups) ^
      const DeepCollectionEquality().hash(nsfw);

  @JsonKey(ignore: true)
  @override
  $RedditMemeModelCopyWith<RedditMemeModel> get copyWith =>
      _$RedditMemeModelCopyWithImpl<RedditMemeModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)
        $default, {
    required TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)
        reddit,
  }) {
    return reddit(title, author, imageLink, sourceLink, subreddit, ups, nsfw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)?
        $default, {
    TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)?
        reddit,
  }) {
    return reddit?.call(
        title, author, imageLink, sourceLink, subreddit, ups, nsfw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String sourceLink, String imageLink, String title,
            String author, List<String> imagePreviews)?
        $default, {
    TResult Function(String title, String author, String imageLink,
            String sourceLink, String subreddit, int ups, bool nsfw)?
        reddit,
    required TResult orElse(),
  }) {
    if (reddit != null) {
      return reddit(title, author, imageLink, sourceLink, subreddit, ups, nsfw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value) $default, {
    required TResult Function(RedditMemeModel value) reddit,
  }) {
    return reddit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value)? $default, {
    TResult Function(RedditMemeModel value)? reddit,
  }) {
    return reddit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AbstractMemeModel value)? $default, {
    TResult Function(RedditMemeModel value)? reddit,
    required TResult orElse(),
  }) {
    if (reddit != null) {
      return reddit(this);
    }
    return orElse();
  }
}

abstract class RedditMemeModel implements AbstractMemeModel {
  factory RedditMemeModel(
      {required String title,
      required String author,
      required String imageLink,
      required String sourceLink,
      required String subreddit,
      required int ups,
      required bool nsfw}) = _$RedditMemeModel;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get imageLink => throw _privateConstructorUsedError;
  @override
  String get sourceLink => throw _privateConstructorUsedError;
  String get subreddit => throw _privateConstructorUsedError;
  int get ups => throw _privateConstructorUsedError;
  bool get nsfw => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RedditMemeModelCopyWith<RedditMemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
