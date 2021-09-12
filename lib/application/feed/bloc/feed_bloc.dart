import 'dart:async';

import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

const int kMemeChunkSize = 20;

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  RedditScrapperFacade redditScrapper;

  /// BLoC for feed widget.
  FeedBloc(this.redditScrapper) : super(FeedState.loading());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      refresh: (e) async* {
        yield FeedState.loading();
        final scrappedMemes = await redditScrapper.getMemes(kMemeChunkSize);
        yield state.copyWith(
          isLoading: false,
          memes: scrappedMemes,
          iterator: 0,
        );
      },
      like: (e) async* {
        yield state;
      },
      next: (e) async* {
        yield state;
      },
    );
  }
}
