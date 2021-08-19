// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_scrapper_facade.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RedditScrapperFacade implements RedditScrapperFacade {
  _RedditScrapperFacade(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://reddit-meme-api.herokuapp.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RedditMemeModel> getRandomMeme(count) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RedditMemeModel>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/1',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RedditMemeModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
