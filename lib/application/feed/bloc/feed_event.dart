part of 'feed_bloc.dart';

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent.like() = _Like;
  const factory FeedEvent.refresh() = _Refresh;
  const factory FeedEvent.next() = _Next;
  const factory FeedEvent.init() = _Init;
}
