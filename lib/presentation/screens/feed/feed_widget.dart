import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/misc/helper.dart';
import 'package:devour/presentation/widgets/platform/platform_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: Text('loading...'));
        }

        final currentPost = state.memes[state.iterator];
        return Stack(
          children: [
            Center(
              child: Image.network(currentPost.imageLink),
            ),
            Positioned.fill(
              top: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PostActionsWidget(currentPost: currentPost),
                ],
              ),
            ),
            Positioned(
              left: 20,
              bottom: 60,
              child: PostDescriptionWidget(
                currentPost: currentPost,
              ),
            ),
          ],
        );
      },
    );
  }
}

class PostActionsWidget extends StatelessWidget {
  const PostActionsWidget({
    Key? key,
    required this.currentPost,
  }) : super(key: key);

  final AbstractMemeModel currentPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PlatformIconButton(
          onPressed: () => null,
          icon: CupertinoIcons.heart,
          size: 42,
          color: Colors.white,
          text: currentPost.likes.toShortString(),
        ),
        PlatformIconButton(
          onPressed: () => null,
          icon: CupertinoIcons.chat_bubble_2,
          size: 42,
          color: Colors.white,
          text: currentPost.comments.toShortString(),
        ),
        PlatformIconButton(
          onPressed: () => null,
          icon: CupertinoIcons.share,
          size: 42,
          color: Colors.white,
          text: 'Share',
        ),
      ],
    );
  }
}

class PostDescriptionWidget extends StatelessWidget {
  const PostDescriptionWidget({
    Key? key,
    required this.currentPost,
  }) : super(key: key);

  final AbstractMemeModel currentPost;

  @override
  Widget build(BuildContext context) {
    final textStyle =
        CupertinoTheme.of(context).textTheme.textStyle.copyWith(fontSize: 19);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '/u/${currentPost.author}',
          style: textStyle.copyWith(fontWeight: FontWeight.w600),
        ),
        if (currentPost is RedditMemeModel)
          Text(
            '/r/${(currentPost as RedditMemeModel).subreddit}',
            style: textStyle.copyWith(fontWeight: FontWeight.w400),
          ),
        const SizedBox(height: 10),
        Text(
          currentPost.title,
          style: textStyle,
        ),
      ],
    );
  }
}
