// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:devour/application/accounts/bloc/accounts_bloc.dart' as _i16;
import 'package:devour/application/auth/login/login_bloc.dart' as _i9;
import 'package:devour/application/feed/bloc/feed_bloc.dart' as _i15;
import 'package:devour/application/navigator/app_navigator.dart' as _i3;
import 'package:devour/domain/auth/i_auth_facade.dart' as _i5;
import 'package:devour/domain/managers/accounts_manager.dart' as _i17;
import 'package:devour/domain/repositories/account_repository.dart' as _i13;
import 'package:devour/infrastructure/api/reddit/reddit_api.dart' as _i10;
import 'package:devour/infrastructure/api/reddit/reddit_auth_api.dart' as _i11;
import 'package:devour/infrastructure/auth/telegram_auth_facade.dart' as _i6;
import 'package:devour/infrastructure/data/local/data_adapter.dart' as _i7;
import 'package:devour/infrastructure/data/local/hive_adapter.dart' as _i8;
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper.dart'
    as _i12;
import 'package:devour/infrastructure/register_module.dart' as _i18;
import 'package:devour/infrastructure/repositories/accounts_repository.dart'
    as _i14;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppNavigator>(() => _i3.AppNavigator());
  gh.singleton<_i4.Dio>(registerModule.getRedditDio(),
      instanceName: 'redditDio');
  gh.factory<_i5.IAuthFacade>(() => _i6.TelegramAuthFacade());
  await gh.singletonAsync<_i7.IDataAdapter>(() => _i8.HiveAdapter.create(),
      preResolve: true);
  gh.factory<_i9.LoginBloc>(() => _i9.LoginBloc(get<_i5.IAuthFacade>()));
  gh.singleton<_i10.RedditAPI>(
      _i10.RedditAPI(get<_i4.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i11.RedditAuthAPI>(
      _i11.RedditAuthAPI(get<_i4.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i12.RedditScrapperFacade>(
      _i12.RedditScrapperFacade(get<_i10.RedditAPI>()));
  await gh.singletonAsync<_i13.AccountsRepository>(
      () => _i14.AccountsRepositoryImpl.create(get<_i7.IDataAdapter>()),
      preResolve: true);
  gh.factory<_i15.FeedBloc>(
      () => _i15.FeedBloc(get<_i12.RedditScrapperFacade>()));
  gh.factory<_i16.AccountsBloc>(() => _i16.AccountsBloc(
      get<_i11.RedditAuthAPI>(), get<_i13.AccountsRepository>()));
  gh.singletonAsync<_i17.AccountsManager>(
      () => _i17.AccountsManager.init(get<_i13.AccountsRepository>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
