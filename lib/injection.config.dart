// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:devour/application/accounts/bloc/accounts_bloc.dart' as _i17;
import 'package:devour/application/auth/login/login_bloc.dart' as _i10;
import 'package:devour/application/feed/bloc/feed_bloc.dart' as _i16;
import 'package:devour/application/navigator/app_navigator.dart' as _i3;
import 'package:devour/domain/auth/i_auth_facade.dart' as _i6;
import 'package:devour/domain/managers/accounts_manager.dart' as _i18;
import 'package:devour/domain/repositories/account_repository.dart' as _i14;
import 'package:devour/infrastructure/api/reddit/reddit_api.dart' as _i11;
import 'package:devour/infrastructure/api/reddit/reddit_auth_api.dart' as _i12;
import 'package:devour/infrastructure/auth/telegram_auth_facade.dart' as _i7;
import 'package:devour/infrastructure/data/local/data_adapter.dart' as _i8;
import 'package:devour/infrastructure/data/local/hive_adapter.dart' as _i9;
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper.dart'
    as _i13;
import 'package:devour/infrastructure/register_module.dart' as _i19;
import 'package:devour/infrastructure/repositories/accounts_repository.dart'
    as _i15;
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i4;
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
  gh.singleton<_i4.CacheManager>(registerModule.cacheManager());
  gh.singleton<_i5.Dio>(registerModule.getRedditDio(),
      instanceName: 'redditDio');
  gh.factory<_i6.IAuthFacade>(() => _i7.TelegramAuthFacade());
  await gh.singletonAsync<_i8.IDataAdapter>(() => _i9.HiveAdapter.create(),
      preResolve: true);
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i6.IAuthFacade>()));
  gh.singleton<_i11.RedditAPI>(
      _i11.RedditAPI(get<_i5.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i12.RedditAuthAPI>(
      _i12.RedditAuthAPI(get<_i5.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i13.RedditScrapperFacade>(
      _i13.RedditScrapperFacade(get<_i11.RedditAPI>()));
  await gh.singletonAsync<_i14.AccountsRepository>(
      () => _i15.AccountsRepositoryImpl.create(get<_i8.IDataAdapter>()),
      preResolve: true);
  gh.factory<_i16.FeedBloc>(
      () => _i16.FeedBloc(get<_i13.RedditScrapperFacade>()));
  gh.factory<_i17.AccountsBloc>(() => _i17.AccountsBloc(
      get<_i12.RedditAuthAPI>(), get<_i14.AccountsRepository>()));
  gh.singletonAsync<_i18.AccountsManager>(
      () => _i18.AccountsManager.init(get<_i14.AccountsRepository>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
