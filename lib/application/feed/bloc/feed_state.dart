part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    required bool isLoading,
    required List<AbstractMemeModel> memes,
    required int iterator,
  }) = _FeedState;

  factory FeedState.loading() => FeedState(
        isLoading: true,
        memes: [],
        iterator: 0,
      );
}
