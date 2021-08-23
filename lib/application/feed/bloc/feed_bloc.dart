import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/meme_scrapper/i_meme_scrapper_facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';
part 'feed_state.dart';
part 'feed_bloc.freezed.dart';

const int kMemeChunkSize = 20;

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  IMemeScrapperFacade _memeScrapper;

  /// BLoC for feed widget. although [memeScrapper] marked as nullable, in must be not null.
  /// It marked nullable because of Injectable.
  FeedBloc(@factoryParam IMemeScrapperFacade? memeScrapper)
      : assert(memeScrapper != null),
        _memeScrapper = memeScrapper!,
        super(FeedState.loading());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      init: (e) async* {
        yield FeedState.loading();
        final scrappedMemes = await _memeScrapper.getMemes(kMemeChunkSize);
        yield state.copyWith(
          isLoading: false,
          memes: scrappedMemes,
          iterator: 0,
        );
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
