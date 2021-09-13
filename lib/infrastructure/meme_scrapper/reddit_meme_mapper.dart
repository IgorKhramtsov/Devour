import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/infrastructure/api/reddit/response/reddit_responses.dart';

class RedditMemeMapper {
  static RedditMemeModel map(RedditPostResponse response) {
    return RedditMemeModel(
      title: response.title,
      author: response.author,
      imageLink: response.url,
      sourceLink: 'https://reddit.com/${response.permalink}',
      subreddit: response.subreddit,
      likes: response.ups,
      comments: response.numComments,
      nsfw: response.over18,
    );
  }
}
