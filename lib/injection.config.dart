// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:devour/application/accounts/bloc/accounts_bloc.dart' as _i18;
import 'package:devour/application/auth/login/login_bloc.dart' as _i12;
import 'package:devour/application/feed/bloc/feed_bloc.dart' as _i17;
import 'package:devour/application/navigator/app_navigator.dart' as _i3;
import 'package:devour/domain/auth/i_auth_facade.dart' as _i5;
import 'package:devour/domain/managers/accounts_manager.dart' as _i19;
import 'package:devour/domain/meme/abstract_meme_model.dart' as _i10;
import 'package:devour/domain/meme_scrapper/i_meme_scrapper_facade.dart' as _i9;
import 'package:devour/domain/repositories/account_repository.dart' as _i15;
import 'package:devour/infrastructure/api/reddit/reddit_api.dart' as _i13;
import 'package:devour/infrastructure/api/reddit/reddit_auth_api.dart' as _i14;
import 'package:devour/infrastructure/auth/telegram_auth_facade.dart' as _i6;
import 'package:devour/infrastructure/data/local/data_adapter.dart' as _i7;
import 'package:devour/infrastructure/data/local/hive_adapter.dart' as _i8;
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper_facade.dart'
    as _i11;
import 'package:devour/infrastructure/register_module.dart' as _i20;
import 'package:devour/infrastructure/repositories/accounts_repository.dart'
    as _i16;
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
  gh.singleton<_i9.IMemeScrapperFacade<_i10.RedditMemeModel>>(
      _i11.RedditScrapperFacade(get<_i4.Dio>(instanceName: 'redditDio')));
  gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(get<_i5.IAuthFacade>()));
  gh.singleton<_i13.RedditAPI>(
      _i13.RedditAPI(get<_i4.Dio>(instanceName: 'redditDio')));
  gh.singleton<_i14.RedditAuthAPI>(
      _i14.RedditAuthAPI(get<_i4.Dio>(instanceName: 'redditDio')));
  await gh.singletonAsync<_i15.AccountsRepository>(
      () => _i16.AccountsRepositoryImpl.create(get<_i7.IDataAdapter>()),
      preResolve: true);
  gh.factory<_i17.FeedBloc>(() => _i17.FeedBloc(get<_i13.RedditAPI>()));
  gh.factory<_i18.AccountsBloc>(() => _i18.AccountsBloc(
      get<_i14.RedditAuthAPI>(), get<_i15.AccountsRepository>()));
  gh.singletonAsync<_i19.AccountsManager>(
      () => _i19.AccountsManager.init(get<_i15.AccountsRepository>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}
