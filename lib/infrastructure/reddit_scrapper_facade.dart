import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/meme_scrapper/i_meme_scrapper_facade.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'reddit_scrapper_facade.g.dart';

@RestApi(baseUrl: 'https://reddit-meme-api.herokuapp.com/')
abstract class RedditScrapperFacade
    implements IMemeScrapperFacade<RedditMemeModel> {
  factory RedditScrapperFacade(Dio dio, {String baseUrl}) =
      _RedditScrapperFacade;

  @override
  @GET('/1')
  Future<RedditMemeModel> getRandomMeme(int count);
}
