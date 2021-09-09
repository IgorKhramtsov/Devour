import 'package:devour/domain/auth/oauth_account_model.dart';
import 'package:devour/domain/repositories/account_repository.dart';
import 'package:devour/infrastructure/core/misc.dart';
import 'package:devour/infrastructure/data/local/data_adapter.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:collection/collection.dart';

@preResolve
@singleton
class AccountsRepositoryImpl implements AccountsRepository {
  /// Create repostitory with local data adapter
  AccountsRepositoryImpl(this._localDataAdapter) : super();

  @factoryMethod
  static Future<AccountsRepository> create(IDataAdapter adapter) async {
    final repo = AccountsRepositoryImpl(adapter);
    await repo.fetch();

    return repo;
  }

  static const String _tableName = 'account';
  final IDataAdapter _localDataAdapter;

  final BehaviorSubject<Map<String, OAuthAccountModel>> _accounts =
      BehaviorSubject<Map<String, OAuthAccountModel>>.seeded({});

  @override
  Stream<Iterable<OAuthAccountModel>> get accounts =>
      _accounts.stream.map((map) => map.values);

  @override
  Future<void> fetch() async {
    final rawData = await _localDataAdapter.fetch(_tableName);
    _accounts.add(rawData.cast());
  }

  @override
  void setAccount<T extends OAuthAccountModel>(T account) {
    final newAccountsState = _accounts.value;
    newAccountsState[_typeToString(account.runtimeType)] = account;
    _accounts.add(newAccountsState);

    final key = _typeToString(account.runtimeType);
    _localDataAdapter.save(_tableName, key, account);
  }

  @override
  Option<T> getAccount<T extends OAuthAccountModel>() {
    assert(dynamic is! T);
    final key = _getKey<T>();
    return Option.fromNullable(_accounts.value[key] as T?);
  }

  @override
  bool isAuthenticated<T extends OAuthAccountModel>() {
    assert(dynamic is! T);
    final key = _getKey<T>();
    return _accounts.value[key] != null;
  }

  @override
  void removeAccount<T extends OAuthAccountModel>() {
    assert(dynamic is! T);
    final key = _getKey<T>();
    final newAccountsState = _accounts.value;
    newAccountsState.remove(key);
    _accounts.add(newAccountsState);

    _localDataAdapter.remove(_tableName, key.toString());
  }

  /// Use this, because real runtimeType of account is something like _$_RedditAccount,
  /// becase of freezed.
  static String _getKey<T>() => _typeToString(typeOf<T>());

  /// Returns string interpretation of Type, with removed _$_ symbols.
  static String _typeToString(Type type) =>
      type.toString().replaceAll(RegExp('[^A-Za-z0-9]+'), '');
}
