import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/infrastructure/api/reddit/response/reddit_responses.dart';

class RedditMemeMapper {
  static RedditMemeModel map(RedditPostResponse response) {
    return RedditMemeModel(
      title: response.title,
      author: response.author,
      imageLink: response.url,
      sourceLink: '',
      subreddit: response.subreddit,
      ups: response.ups,
      nsfw: response.over18,
    );
  }
}
