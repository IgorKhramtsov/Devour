import 'dart:ui';

import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/misc/helper.dart';
import 'package:devour/presentation/widgets/platform/platform_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
    this.state, {
    Key? key,
  }) : super(key: key);

  final FeedState state;

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) {
      return Container();
    }

    final key = state.currentMemeWidget.toNullable();
    final box = key?.currentContext?.findRenderObject() as RenderBox?;
    final pos = box?.localToGlobal(Offset.zero) ?? Offset.zero;

    return Stack(
      children: [
        Positioned(
          top: pos.dy,
          left: pos.dx,
          width: box?.size.width,
          height: box?.size.height,
          child: IgnorePointer(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 100),
              layoutBuilder: (curr, prev) {
                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    // ...prev,
                    if (curr != null) curr,
                  ],
                );
              },
              child: Container(
                key: Key(state.currentMemeModel.imageLink),
                child: Image.network(state.currentMemeModel.imageLink),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PostActionsWidget(currentPost: state.currentMemeModel),
            ],
          ),
        ),
        Positioned(
          left: 20,
          bottom: 100,
          child: PostDescriptionWidget(
            currentPost: state.currentMemeModel,
          ),
        ),
      ],
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
          color: CupertinoColors.white,
          text: currentPost.likes.toShortString(),
        ),
        PlatformIconButton(
          onPressed: () => null,
          icon: CupertinoIcons.chat_bubble_2,
          size: 42,
          color: CupertinoColors.white,
          text: currentPost.comments.toShortString(),
        ),
        PlatformIconButton(
          onPressed: () => null,
          icon: CupertinoIcons.share,
          size: 42,
          color: CupertinoColors.white,
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
