import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/misc/helper.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/screens/feed/feed_image_widget.dart';
import 'package:devour/presentation/widgets/platform/platform_icon_button.dart';
import 'package:devour/presentation/widgets/platform/platform_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:share_plus/share_plus.dart';

/// Widget, that shows post information like description, likes and image,
/// to create illusion of selecting meme from list.
class PostWidget extends StatefulWidget {
  /// Constructs PostWidget
  const PostWidget(
    this.state, {
    required this.constraints,
    Key? key,
  }) : super(key: key);

  final FeedState state;
  final BoxConstraints constraints;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.state.isLoading) {
      return Container();
    }

    final key = widget.state.currentMemeWidget.toNullable();
    // key.currentWidget
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
              child: FeedImage(
                key: Key(widget.state.currentMemeModel.imageLink),
                imageProvider: CachedNetworkImageProvider(
                  widget.state.currentMemeModel.imageLink,
                  errorListener: () => print(
                      'error (${widget.state.currentMemeModel.imageLink})'),
                  cacheManager: serviceLocator<CacheManager>(),
                ),
                constraints: widget.constraints,
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PostActionsWidget(currentPost: widget.state.currentMemeModel),
            ],
          ),
        ),
        Positioned(
          left: 20,
          bottom: 100,
          width: 400,
          child: PostDescriptionWidget(
            currentPost: widget.state.currentMemeModel,
          ),
        ),
      ],
    );
  }
}

class PostActionsWidget extends StatelessWidget {
  /// Column with actions, showed to user for certain post
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
          onPressed: share,
          icon: CupertinoIcons.share,
          size: 42,
          color: CupertinoColors.white,
          text: 'Share',
        ),
      ],
    );
  }

  void share() async {
    final cacheManager = serviceLocator<CacheManager>();
    final file = await cacheManager.getSingleFile(currentPost.imageLink);
    // TODO: currentPost.isVideo ? mimeType: 'video/*'

    Share.shareFiles([file.path], mimeTypes: ['image/*']);
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
        PlatformTheme.getTextStyle(context).copyWith(fontSize: 19);
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
