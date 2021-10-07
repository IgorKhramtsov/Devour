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
import 'package:lottie/lottie.dart';
import 'package:octo_image/octo_image.dart';
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
  final ItemPositionsListener listener = ItemPositionsListener.create();
  final renderedMemes = <int, Size>{};
  final renderedMemesKeys = <int, GlobalKey>{};

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

          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints cnstr) => Stack(
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
                    physics: FeedScrollPhysics(
                      renderedMemes,
                      // sbustract bottom tab navbar size, because we cant see anything
                      // behide it (unlike top unsafe area)
                      cnstr.maxHeight - MediaQuery.of(context).padding.bottom,
                    ),
                    itemCount: state.memes.length,
                    itemPositionsListener: listener,
                    itemBuilder: (BuildContext context, int index) {
                      final imageProvider = CachedNetworkImageProvider(
                        state.memes[index].imageLink,
                        cacheManager: cacheManager,
                      );
                      // We can use safe area here, but it will create more problems
                      final maxHeight = cnstr.maxHeight -
                          MediaQuery.of(context).padding.bottom -
                          MediaQuery.of(context).padding.top;
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
                buildVignette(),
                // Build overlay with actions and description, with listenable of current
                // scroll position
                ValueListenableBuilder(
                  valueListenable: listener.itemPositions,
                  builder: (_, __, ___) {
                    return PostWidget(state);
                  },
                )
              ],
            ),
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
    imageProvider.resolve(ImageConfiguration.empty).addListener(
      ImageStreamListener((info, _) {
        // Calculating correct size of resulting image
        Size size = Size(
          info.image.width.toDouble(),
          info.image.height.toDouble(),
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
        if (size.height < 200) {
          size = Size(
            200 * size.aspectRatio,
            200,
          );
        }

        // For updating UI after fetching image (without it overlayed image will be smol)
        WidgetsBinding.instance!.addPostFrameCallback(
          (_) => setState(() {
            renderedMemes[index] = size;
          }),
        );
      }),
    );
  }
}
