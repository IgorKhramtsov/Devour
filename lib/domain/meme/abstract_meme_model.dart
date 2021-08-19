import 'package:freezed_annotation/freezed_annotation.dart';

part 'abstract_meme_model.freezed.dart';
part 'abstract_meme_model.g.dart';

// part 'abstract_meme_model.g.dart';
@freezed
abstract class AbstractMemeModel with _$AbstractMemeModel {
  factory AbstractMemeModel({
    required String sourceLink,
    required String imageLink,
    required String title,
    required String author,
    required List<String> imagePreviews,
  }) = _AbstractMemeModel;

  // ignore: public_member_api_docs
  // @Implements(AbstractMemeModel)
  factory AbstractMemeModel.reddit({
    required String title,
    required String author,
    @JsonKey(name: 'image_reviews') required List<String> imagePreviews,
    @JsonKey(name: 'url') required String imageLink,
    @JsonKey(name: 'post_link') required String sourceLink,
    required String subreddit,
    required int ups,
    @JsonKey(name: 'spoilers_enabled') required bool spoilersEnabled,
    required bool nsfw,
  }) = RedditMemeModel;

  const AbstractMemeModel._();

  factory AbstractMemeModel.fromJson(Map<String, Object?> json) =>
      _$AbstractMemeModelFromJson(json);
  // ignore: public_member_api_docs
}
