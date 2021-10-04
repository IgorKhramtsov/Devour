part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  /// Initial event, to fetch from db
  const factory AccountsEvent.Fetching() = _Fetching;

  const factory AccountsEvent.RequestAuthorizationReddit() =
      _RequestAuthorizationReddit;
  const factory AccountsEvent.RequestAuthorizationVK() =
      _RequestAuthorizationVK;
  const factory AccountsEvent.AuthorizeReddit(RedditRedirectArguments args) =
      _AuthorizeReddit;
  const factory AccountsEvent.AuthorizeVK() = _AuthorizeVK;
  const factory AccountsEvent.ForgetVK() = _ForgetVK;
  const factory AccountsEvent.ForgetReddit() = _ForgetReddit;
}
