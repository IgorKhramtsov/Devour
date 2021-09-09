import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class AccountsRepository {
  Future<void> fetch();

  void setAccount<T extends OAuthAccountModel>(T account);
  void removeAccount<T extends OAuthAccountModel>();
  bool isAuthenticated<T extends OAuthAccountModel>();
  Option<T> getAccount<T extends OAuthAccountModel>();

  Stream<Iterable<OAuthAccountModel>> get accounts;
}
