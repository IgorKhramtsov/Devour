// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstract_meme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbstractMemeModel _$$_AbstractMemeModelFromJson(Map<String, dynamic> json) =>
    _$_AbstractMemeModel(
      sourceLink: json['sourceLink'] as String,
      imageLink: json['imageLink'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      imagePreviews: (json['imagePreviews'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AbstractMemeModelToJson(
        _$_AbstractMemeModel instance) =>
    <String, dynamic>{
      'sourceLink': instance.sourceLink,
      'imageLink': instance.imageLink,
      'title': instance.title,
      'author': instance.author,
      'imagePreviews': instance.imagePreviews,
    };

_$RedditMemeModel _$$RedditMemeModelFromJson(Map<String, dynamic> json) =>
    _$RedditMemeModel(
      title: json['title'] as String,
      author: json['author'] as String,
      imagePreviews: (json['image_reviews'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      imageLink: json['url'] as String,
      sourceLink: json['post_link'] as String,
      subreddit: json['subreddit'] as String,
      ups: json['ups'] as int,
      spoilersEnabled: json['spoilers_enabled'] as bool,
      nsfw: json['nsfw'] as bool,
    );

Map<String, dynamic> _$$RedditMemeModelToJson(_$RedditMemeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'image_reviews': instance.imagePreviews,
      'url': instance.imageLink,
      'post_link': instance.sourceLink,
      'subreddit': instance.subreddit,
      'ups': instance.ups,
      'spoilers_enabled': instance.spoilersEnabled,
      'nsfw': instance.nsfw,
    };
