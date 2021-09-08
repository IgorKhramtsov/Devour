abstract class OAuthAccountModel {
  const OAuthAccountModel();

  String get accessToken;
  int get expiresIn;
  String get refreshToken;
  String get scope;
}
