import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class AccountRepository<T extends OAuthAccountModel> {
  void setAccount(T account);
  void removeAccount();
  bool isAuthenticated();
  Option<T> getAccount();
}
