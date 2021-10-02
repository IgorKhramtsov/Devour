import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/screens/feed/feed_scroll_physics.dart';
import 'package:devour/presentation/screens/feed/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fpdart/fpdart.dart' show Option;
import 'package:octo_image/octo_image.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:collection/collection.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  void initState() {
    super.initState();

    listener.itemPositions.addListener(updateSelectedMeme);
  }

  @override
  void dispose() {
    listener.itemPositions.removeListener(updateSelectedMeme);
    super.dispose();
  }

  void updateSelectedMeme() {
    final bloc = BlocProvider.of<FeedBloc>(context);
    final memePositions = listener.itemPositions.value;

    final selectedMeme = listener.itemPositions.value
        .where((e) => e.itemLeadingEdge <= 0.5 && e.itemTrailingEdge >= 0.5)
        .firstOrNull;
    if (selectedMeme == null) {
      assert(false);
      return;
    }

    bloc.add(
      FeedEvent.select(
        selectedMeme.index,
        Option.fromNullable(renderedMemesKeys[selectedMeme.index]),
      ),
    );
  }

  late CacheManager cacheManager = serviceLocator<CacheManager>();
  final ScrollController controller = ScrollController();
  final ItemPositionsListener listener = ItemPositionsListener.create();
  final renderedMemes = <int, Size>{};
  final renderedMemesKeys = <int, GlobalKey>{};

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: Text('loading...'));
        }

        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) => Stack(
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.compose(
                  outer: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                  inner: ColorFilter.mode(
                    Colors.black.withOpacity(.15),
                    BlendMode.darken,
                  ),
                ),
                child: ScrollablePositionedList.builder(
                  physics: FeedScrollPhysics(renderedMemes),
                  itemCount: state.memes.length,
                  itemPositionsListener: listener,
                  itemBuilder: (BuildContext context, int index) {
                    // We can use safe area here, but it will create more problems
                    final maxHeight = constraints.maxHeight -
                        MediaQuery.of(context).padding.bottom -
                        MediaQuery.of(context).padding.top;
                    final key =
                        renderedMemesKeys.putIfAbsent(index, () => GlobalKey());
                    final imageProvider = CachedNetworkImageProvider(
                      state.memes[index].imageLink,
                      cacheManager: cacheManager,
                    );
                    if (renderedMemes[index] == null) {
                      imageProvider
                          .resolve(ImageConfiguration.empty)
                          .addListener(
                        ImageStreamListener((info, synchronousCall) {
                          Size size = Size(
                            info.image.width.toDouble(),
                            max(info.image.height.toDouble(), 200.0),
                          );
                          if (size.width > constraints.maxWidth) {
                            size = Size(
                              constraints.maxWidth,
                              constraints.maxWidth / size.aspectRatio,
                            );
                          }
                          if (size.height > maxHeight) {
                            size = Size(
                              maxHeight * size.aspectRatio,
                              maxHeight,
                            );
                          }
                          renderedMemes[index] = size;
                        }),
                      );
                      renderedMemes[index] = Size.zero;
                    }

                    return ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 200,
                        minWidth: 200,
                        maxHeight: maxHeight,
                      ),
                      child: OctoImage(
                        key: key,
                        image: imageProvider,
                      ),
                    );
                  },
                ),
              ),
              IgnorePointer(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.3),
                        Color.fromRGBO(0, 0, 0, 0.0),
                        Color.fromRGBO(0, 0, 0, 0.0),
                        Color.fromRGBO(0, 0, 0, 0.3),
                      ],
                    ),
                  ),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: listener.itemPositions,
                builder: (_, __, ___) {
                  return PostWidget(state);
                },
              )
            ],
          ),
        );
      },
    );
  }
}
