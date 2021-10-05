import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/infrastructure/api/reddit/reddit_api.dart';
import 'package:devour/infrastructure/api/reddit/response/reddit_responses.dart';
import 'package:devour/infrastructure/meme_scrapper/reddit_meme_mapper.dart';
import 'package:injectable/injectable.dart';

@singleton
class RedditScrapperFacade {
  @factoryMethod
  RedditScrapperFacade(this.redditAPI);

  final RedditAPI redditAPI;

  @override
  Future<RedditMemeModel> getOneMeme() {
    throw UnimplementedError();
  }

  @override
  Future<List<RedditMemeModel>> getMemes(int count, {String? after}) async {
    final listing = await redditAPI.getMemes(limit: count, after: after);
    final memes = listing.children
        .map((post) => post as RedditPostResponse)
        .where((post) => !post.stickied)
        // The videos are m3u8 format, and have its own data structure. Add its support later.
        .where((post) => !post.isVideo)
        .map(RedditMemeMapper.map);
    return memes.toList();
  }
}
