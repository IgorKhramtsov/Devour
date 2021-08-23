// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/login/login_bloc.dart' as _i9;
import 'application/feed/bloc/feed_bloc.dart' as _i4;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/meme/abstract_meme_model.dart' as _i6;
import 'domain/meme_scrapper/i_meme_scrapper_facade.dart' as _i5;
import 'infrastructure/auth/telegram_auth_facade.dart' as _i8;
import 'infrastructure/meme_scrapper/reddit_scrapper_facade.dart' as _i10;
import 'infrastructure/register_module.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.getDio());
  gh.factoryParam<_i4.FeedBloc, _i5.IMemeScrapperFacade<_i6.AbstractMemeModel>?,
      dynamic>((memeScrapper, _) => _i4.FeedBloc(memeScrapper));
  gh.factory<_i7.IAuthFacade>(() => _i8.TelegramAuthFacade());
  gh.factory<_i9.LoginBloc>(() => _i9.LoginBloc(get<_i7.IAuthFacade>()));
  gh.singleton<_i5.IMemeScrapperFacade<_i6.RedditMemeModel>>(
      _i10.RedditScrapperFacade(get<_i3.Dio>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
