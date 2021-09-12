import 'package:freezed_annotation/freezed_annotation.dart';

part 'reddit_auth_response.g.dart';
part 'reddit_auth_response.freezed.dart';

/// Authorization response data
@freezed
class AuthorizationResponse with _$AuthorizationResponse {
  // ignore: public_member_api_docs
  factory AuthorizationResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'scope') required String scope,
  }) = _AuthorizationResponse;

  factory AuthorizationResponse.fromJson(Map<String, Object?> json) =>
      _$AuthorizationResponseFromJson(json);
}
