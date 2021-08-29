import 'dart:io';

import 'package:devour/infrastructure/core/misc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:url_launcher/url_launcher.dart';

part 'reddit_api.g.dart';

const String _kBaseUrl = 'https://www.reddit.com/api/v1/';

@Singleton()
@RestApi(baseUrl: _kBaseUrl)
abstract class RedditAPI {
  @factoryMethod
  factory RedditAPI(Dio dio) = _RedditAPI;
}

extension Authorize on RedditAPI {
  // https://www.reddit.com/api/v1/authorize?client_id=CLIENT_ID&response_type=code&state=RANDOM_STRING&redirect_uri=https://khramtsov.dev&duration=permanent&scope=read
  Future<void> authorize() => _authorize(
        dotenv.env['CLIENT_ID'] ??
            (throw Exception(
                'CLIENT_ID is not defined in environment variables!')),
        'code',
        getRandomString(15),
        'devour://redirect/reddit_auth',
        'permanent',
        'read',
      );

  Future<void> _authorize(
    String clientId,
    String responseType,
    String state,
    String redirect,
    String duration,
    String scope,
  ) async {
    final query = <String, String>{};
    query['client_id'] = clientId;
    query['response_type'] = responseType;
    query['state'] = state;
    query['redirect_uri'] = redirect;
    query['duration'] = duration;
    query['scope'] = scope;

    final options = Options(method: 'GET', headers: <String, dynamic>{})
        .compose(BaseOptions(), 'authorize', queryParameters: query)
        .copyWith(baseUrl: _kBaseUrl);
    final url = options.uri;

    await launch(url.toString(), forceSafariVC: false);
  }
}
