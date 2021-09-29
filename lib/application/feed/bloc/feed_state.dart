part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    required bool isLoading,
    required List<AbstractMemeModel> memes,
    required int iterator,
    required Option<GlobalKey<State<StatefulWidget>>> currentMemeWidget,
  }) = _FeedState;

  factory FeedState.loading() => FeedState(
        isLoading: true,
        memes: [],
        iterator: 0,
        currentMemeWidget: Option.none(),
      );
}

extension FeedStateX on FeedState {
  AbstractMemeModel get currentMemeModel => memes[iterator];
}
