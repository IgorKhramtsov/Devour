part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.RequestAuthorizationReddit() =
      _RequestAuthorizationReddit;
  const factory AccountsEvent.RequestAuthorizationVK() =
      _RequestAuthorizationVK;
  const factory AccountsEvent.AuthorizeReddit(RedditRedirectArguments args) =
      _AuthorizeReddit;
  const factory AccountsEvent.AuthorizeVK() = _AuthorizeVK;
}
