// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FeedEventTearOff {
  const _$FeedEventTearOff();

  _Like like() {
    return const _Like();
  }

  _Refresh refresh() {
    return const _Refresh();
  }

  _Next next() {
    return const _Next();
  }
}

/// @nodoc
const $FeedEvent = _$FeedEventTearOff();

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() like,
    required TResult Function() refresh,
    required TResult Function() next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class _$LikeCopyWith<$Res> {
  factory _$LikeCopyWith(_Like value, $Res Function(_Like) then) =
      __$LikeCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikeCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$LikeCopyWith<$Res> {
  __$LikeCopyWithImpl(_Like _value, $Res Function(_Like) _then)
      : super(_value, (v) => _then(v as _Like));

  @override
  _Like get _value => super._value as _Like;
}

/// @nodoc

class _$_Like implements _Like {
  const _$_Like();

  @override
  String toString() {
    return 'FeedEvent.like()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Like);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() like,
    required TResult Function() refresh,
    required TResult Function() next,
  }) {
    return like();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
  }) {
    return like?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
  }) {
    return like(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
  }) {
    return like?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class _Like implements FeedEvent {
  const factory _Like() = _$_Like;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'FeedEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() like,
    required TResult Function() refresh,
    required TResult Function() next,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements FeedEvent {
  const factory _Refresh() = _$_Refresh;
}

/// @nodoc
abstract class _$NextCopyWith<$Res> {
  factory _$NextCopyWith(_Next value, $Res Function(_Next) then) =
      __$NextCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$NextCopyWith<$Res> {
  __$NextCopyWithImpl(_Next _value, $Res Function(_Next) _then)
      : super(_value, (v) => _then(v as _Next));

  @override
  _Next get _value => super._value as _Next;
}

/// @nodoc

class _$_Next implements _Next {
  const _$_Next();

  @override
  String toString() {
    return 'FeedEvent.next()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Next);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() like,
    required TResult Function() refresh,
    required TResult Function() next,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? like,
    TResult Function()? refresh,
    TResult Function()? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Like value) like,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Next value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Like value)? like,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Next value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _Next implements FeedEvent {
  const factory _Next() = _$_Next;
}

/// @nodoc
class _$FeedStateTearOff {
  const _$FeedStateTearOff();

  _FeedState call(
      {required bool isLoading,
      required List<AbstractMemeModel> memes,
      required int iterator}) {
    return _FeedState(
      isLoading: isLoading,
      memes: memes,
      iterator: iterator,
    );
  }
}

/// @nodoc
const $FeedState = _$FeedStateTearOff();

/// @nodoc
mixin _$FeedState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AbstractMemeModel> get memes => throw _privateConstructorUsedError;
  int get iterator => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<AbstractMemeModel> memes, int iterator});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? memes = freezed,
    Object? iterator = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      memes: memes == freezed
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<AbstractMemeModel>,
      iterator: iterator == freezed
          ? _value.iterator
          : iterator // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(
          _FeedState value, $Res Function(_FeedState) then) =
      __$FeedStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<AbstractMemeModel> memes, int iterator});
}

/// @nodoc
class __$FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(_FeedState _value, $Res Function(_FeedState) _then)
      : super(_value, (v) => _then(v as _FeedState));

  @override
  _FeedState get _value => super._value as _FeedState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? memes = freezed,
    Object? iterator = freezed,
  }) {
    return _then(_FeedState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      memes: memes == freezed
          ? _value.memes
          : memes // ignore: cast_nullable_to_non_nullable
              as List<AbstractMemeModel>,
      iterator: iterator == freezed
          ? _value.iterator
          : iterator // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FeedState implements _FeedState {
  const _$_FeedState(
      {required this.isLoading, required this.memes, required this.iterator});

  @override
  final bool isLoading;
  @override
  final List<AbstractMemeModel> memes;
  @override
  final int iterator;

  @override
  String toString() {
    return 'FeedState(isLoading: $isLoading, memes: $memes, iterator: $iterator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.memes, memes) ||
                const DeepCollectionEquality().equals(other.memes, memes)) &&
            (identical(other.iterator, iterator) ||
                const DeepCollectionEquality()
                    .equals(other.iterator, iterator)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(memes) ^
      const DeepCollectionEquality().hash(iterator);

  @JsonKey(ignore: true)
  @override
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {required bool isLoading,
      required List<AbstractMemeModel> memes,
      required int iterator}) = _$_FeedState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<AbstractMemeModel> get memes => throw _privateConstructorUsedError;
  @override
  int get iterator => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
