import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/meme_scrapper/i_meme_scrapper_facade.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'reddit_scrapper_facade.g.dart';

abstract class IRedditScrapperFacade
    extends IMemeScrapperFacade<RedditMemeModel> {}

@Singleton(as: IMemeScrapperFacade)
@RestApi(baseUrl: 'https://reddit-meme-api.herokuapp.com/')
abstract class RedditScrapperFacade
    implements IMemeScrapperFacade<RedditMemeModel> {
  @factoryMethod
  factory RedditScrapperFacade(Dio dio) = _RedditScrapperFacade;

  @override
  @GET('/1')
  Future<RedditMemeModel> getOneMeme();

  @override
  @GET('/{count}')
  Future<List<RedditMemeModel>> getMemes(@Path() int count);
}
