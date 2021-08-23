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
  Future<RedditMemeModel> getOneMeme() async {
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

  @override
  Future<List<RedditMemeModel>> getMemes(count) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<RedditMemeModel>>(
            Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
                .compose(_dio.options, '/$count',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => RedditMemeModel.fromJson(i as Map<String, dynamic>))
        .toList();
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
