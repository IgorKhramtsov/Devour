// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:devour/application/accounts/bloc/accounts_bloc.dart' as _i9;
import 'package:devour/application/auth/login/login_bloc.dart' as _i6;
import 'package:devour/application/feed/bloc/feed_bloc.dart' as _i7;
import 'package:devour/application/navigator/app_navigator.dart' as _i3;
import 'package:devour/domain/auth/i_auth_facade.dart' as _i4;
import 'package:devour/domain/managers/accounts_manager.dart' as _i19;
import 'package:devour/domain/meme/abstract_meme_model.dart' as _i16;
import 'package:devour/domain/meme_scrapper/i_meme_scrapper_facade.dart'
    as _i15;
import 'package:devour/domain/repositories/account_repository.dart' as _i11;
import 'package:devour/infrastructure/api/reddit_api.dart' as _i8;
import 'package:devour/infrastructure/api/reddit_auth_api.dart' as _i10;
import 'package:devour/infrastructure/auth/telegram_auth_facade.dart' as _i5;
import 'package:devour/infrastructure/data/local/data_adapter.dart' as _i13;
import 'package:devour/infrastructure/data/local/hive_adapter.dart' as _i14;
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper_facade.dart'
    as _i17;
import 'package:devour/infrastructure/register_module.dart' as _i20;
import 'package:devour/infrastructure/repositories/accounts_repository.dart'
    as _i18;
import 'package:dio/dio.dart' as _i12;
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
  gh.factory<_i4.IAuthFacade>(() => _i5.TelegramAuthFacade());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i7.FeedBloc>(() => _i7.FeedBloc(get<_i8.RedditAPI>()));
  gh.factory<_i9.AccountsBloc>(() => _i9.AccountsBloc(
      get<_i10.RedditAuthAPI>(), get<_i11.AccountsRepository>()));
  gh.singleton<_i12.Dio>(registerModule.getRedditDio(),
      instanceName: 'redditDio');
  await gh.singletonAsync<_i13.IDataAdapter>(() => _i14.HiveAdapter.create(),
      preResolve: true);
  gh.singleton<_i15.IMemeScrapperFacade<_i16.RedditMemeModel>>(
      _i17.RedditScrapperFacade(get<_i12.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i8.RedditAPI>(
      _i8.RedditAPI(get<_i12.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i10.RedditAuthAPI>(
      _i10.RedditAuthAPI(get<_i12.Dio>(instanceName: 'redditDio')));
  await gh.singletonAsync<_i11.AccountsRepository>(
      () => _i18.AccountsRepositoryImpl.create(get<_i13.IDataAdapter>()),
      preResolve: true);
  gh.singletonAsync<_i19.AccountsManager>(
      () => _i19.AccountsManager.init(get<_i11.AccountsRepository>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
