import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/misc/helper.dart';
import 'package:devour/presentation/widgets/platform/platform_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
    this.memeModel, {
    Key? key,
  }) : super(key: key);

  final AbstractMemeModel memeModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.network(memeModel.imageLink),
        ),
        Positioned.fill(
          top: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PostActionsWidget(currentPost: memeModel),
            ],
          ),
        ),
        Positioned(
          left: 20,
          bottom: 60,
          child: PostDescriptionWidget(
            currentPost: memeModel,
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