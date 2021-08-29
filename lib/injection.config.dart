// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/login/login_bloc.dart' as _i10;
import 'application/feed/bloc/feed_bloc.dart' as _i5;
import 'application/navigator/app_navigator.dart' as _i3;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/meme/abstract_meme_model.dart' as _i7;
import 'domain/meme_scrapper/i_meme_scrapper_facade.dart' as _i6;
import 'infrastructure/api/reddit_api.dart' as _i12;
import 'infrastructure/auth/telegram_auth_facade.dart' as _i9;
import 'infrastructure/meme_scrapper/reddit_scrapper_facade.dart' as _i11;
import 'infrastructure/register_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppNavigator>(() => _i3.AppNavigator());
  gh.factory<_i4.Dio>(() => registerModule.getDio());
  gh.factoryParam<_i5.FeedBloc, _i6.IMemeScrapperFacade<_i7.AbstractMemeModel>?,
      dynamic>((memeScrapper, _) => _i5.FeedBloc(memeScrapper));
  gh.factory<_i8.IAuthFacade>(() => _i9.TelegramAuthFacade());
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i8.IAuthFacade>()));
  gh.singleton<_i6.IMemeScrapperFacade<_i7.RedditMemeModel>>(
      _i11.RedditScrapperFacade(get<_i4.Dio>()));
  gh.singleton<_i12.RedditAPI>(_i12.RedditAPI(get<_i4.Dio>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
