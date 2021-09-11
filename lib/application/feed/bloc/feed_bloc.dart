import 'dart:async';

import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/infrastructure/api/reddit/reddit_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

const int kMemeChunkSize = 20;

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  RedditAPI redditAPI;

  /// BLoC for feed widget.
  FeedBloc(this.redditAPI) : super(FeedState.loading());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      init: (e) async* {
        yield FeedState.loading();
        final scrappedMemes = await redditAPI.getMemes();
        print(scrappedMemes);
        // yield state.copyWith(
        //   isLoading: false,
        //   memes: scrappedMemes,
        //   iterator: 0,
        // );
      },
      like: (e) async* {
        yield state;
      },
      refresh: (e) async* {
        yield state;
      },
      next: (e) async* {
        yield state;
      },
    );
  }
}
