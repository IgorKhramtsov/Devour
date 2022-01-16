import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/screens/feed/feed_image_widget.dart';
import 'package:devour/presentation/screens/feed/feed_scroll_physics.dart';
import 'package:devour/presentation/screens/feed/feed_sliver_list.dart';
import 'package:devour/presentation/screens/feed/post_widget.dart';
import 'package:devour/presentation/widgets/animations/animated_opacity_reverse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:fpdart/fpdart.dart' show Option;
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:collection/collection.dart';

class FeedWidget extends StatefulWidget {
  const FeedWidget({Key? key}) : super(key: key);

  @override
  State<FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<FeedWidget> {
  late CacheManager cacheManager = serviceLocator<CacheManager>();
  final ScrollController controller = ScrollController();
  final CurrentElementListener currentElementListener =
      CurrentElementListener();
  final renderedMemes = <int, Size>{};
  final renderedMemesKeys = <int, GlobalKey>{};

  @override
  void initState() {
    super.initState();

    currentElementListener.currentIndex.addListener(updateSelectedMeme);
    // cacheManager.emptyCache();
  }

  @override
  void dispose() {
    currentElementListener.currentIndex.removeListener(updateSelectedMeme);
    super.dispose();
  }

  void updateSelectedMeme() {
    final bloc = BlocProvider.of<FeedBloc>(context);

    bloc.add(
      FeedEvent.select(
        currentElementListener.currentIndex.value,
        Option.fromNullable(
          renderedMemesKeys[currentElementListener.currentIndex.value],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        Widget getContent(BuildContext context, FeedState state) {
          if (state.isLoading) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Center(
                child: Lottie.asset('lib/assets/animations/space_loader.json'),
              ),
            );
          }

          Widget buildSliverList(double maxHeight, BoxConstraints cnstr) {
            return CustomScrollView(
              physics: FeedScrollPhysics(
                renderedMemes,
                maxHeight,
                topPadding: MediaQuery.of(context).padding.top,
              ),
              slivers: [
                FeedSliverList(
                  listener: currentElementListener,
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    final imageProvider = CachedNetworkImageProvider(
                      state.memes[index].imageLink,
                      cacheManager: cacheManager,
                    );
                    final key = renderedMemesKeys.putIfAbsent(
                      index,
                      () => GlobalKey(),
                    );
                    if (renderedMemes[index] == null) {
                      propogateSizeToMap(
                        imageProvider,
                        cnstr,
                        maxHeight,
                        index,
                      );
                      renderedMemes[index] = Size(cnstr.maxWidth, 200);
                    }

                    return FeedImage(
                      key: key,
                      imageProvider: imageProvider,
                      constraints: cnstr,
                      onRefreshPressed: () => setState(() {
                        renderedMemesKeys[index] = GlobalKey();
                      }),
                    );
                  }),
                )
              ],
            );
          }

          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints cnstr) {
              // We can use safe area here, but it will create more problems
              // UPD: What promlems?
              final maxHeight = cnstr.maxHeight -
                  (MediaQuery.of(context).padding.bottom +
                      MediaQuery.of(context).padding.top);

              return Stack(
                children: [
                  buildSliverList(maxHeight, cnstr),
                  buildVignette(),
                  // Build overlay with actions, description and listenable of current
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 150),
                    child: PostWidget(
                      state,
                      constraints: cnstr,
                      key: ValueKey(state.currentMemeModel.sourceLink),
                    ),
                  )
                ],
              );
            },
          );
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Container(
            key: Key(state.isLoading.toString()),
            child: getContent(context, state),
          ),
        );
      },
    );
  }

  IgnorePointer buildVignette() {
    return IgnorePointer(
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
    );
  }

  void propogateSizeToMap(
    CachedNetworkImageProvider imageProvider,
    BoxConstraints constraints,
    double maxHeight,
    int index,
  ) {
    late ImageStreamListener listener;
    listener = ImageStreamListener((info, _) {
      // Calculating correct size of resulting image
      Size size = Size(
        info.image.width.toDouble(),
        info.image.height.toDouble(),
      );
      size = Size(
        constraints.maxWidth,
        constraints.maxWidth / size.aspectRatio,
      );

      // For updating UI after fetching image (without it, overlayed image will be small)
      WidgetsBinding.instance!.addPostFrameCallback(
        (_) => setState(() {
          renderedMemes[index] = size;
          print('index $index is $size');
          imageProvider
              .resolve(ImageConfiguration.empty)
              .removeListener(listener);
        }),
      );
    });
    imageProvider.resolve(ImageConfiguration.empty).addListener(
          listener,
        );
  }
}
