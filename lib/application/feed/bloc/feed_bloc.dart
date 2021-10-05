import 'dart:async';

import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

const int kMemeChunkSize = 20;

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  /// BLoC for feed widget.
  FeedBloc(this.redditScrapper) : super(FeedState.loading());

  RedditScrapperFacade redditScrapper;
  final _gatheringLock = Lock();

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
      select: (e) async* {
        yield state.copyWith(
          iterator: e.index,
          currentMemeWidget: e.key,
        );

        // If only 5 memes left to end of list - populate with new memes
        if (e.index > state.memes.length - 5) {
          yield await _gatheringLock.synchronized(() async {
            final lastId = (state.memes.last as RedditMemeModel).id;
            final newMemesChunk = await getNewMemes(lastId);

            return state.copyWith(
              memes: state.memes..addAll(newMemesChunk),
            );
          });
        }
      },
    );
  }

  /// Gather new memes from api, after [lastId]
  Future<List<AbstractMemeModel>> getNewMemes(final String lastId) async {
    List<AbstractMemeModel> newMemes = [];

    try {
      newMemes = await redditScrapper.getMemes(
        kMemeChunkSize,
        after: lastId,
      );
    } catch (e) {
      print(e);
    }
    return newMemes;
  }

  AbstractMemeModel get currentMemeModel => state.memes[state.iterator];
}
