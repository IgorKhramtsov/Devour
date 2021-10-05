import 'package:freezed_annotation/freezed_annotation.dart';

part 'abstract_meme_model.freezed.dart';

// part 'abstract_meme_model.g.dart';
@freezed
abstract class AbstractMemeModel with _$AbstractMemeModel {
  factory AbstractMemeModel({
    required String sourceLink,
    required String imageLink,
    required String title,
    required String author,
    required int likes,
    required int comments,
  }) = _AbstractMemeModel;

  // ignore: public_member_api_docs
  // @Implements(AbstractMemeModel)
  factory AbstractMemeModel.reddit({
    required String id,
    required String title,
    required String author,
    required String imageLink,
    required String sourceLink,
    required String subreddit,
    required int comments,
    required int likes,
    required bool nsfw,
  }) = RedditMemeModel;
}
