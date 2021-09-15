import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/presentation/screens/feed/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  void initState() {
    super.initState();
    final bloc = BlocProvider.of<FeedBloc>(context);
    overlay = OverlayEntry(
      builder: (BuildContext ctx) => PostOverlayWidget(bloc),
    );
    listener.itemPositions.addListener(() {
      // Gets closest item, which leading edge is less than 0.3 (first third of screen)
      // but not more than 0.3
      final selectedMeme = listener.itemPositions.value
          .where((el) => el.itemLeadingEdge < 0.3)
          .reduce(
            (max, element) =>
                element.itemLeadingEdge > max.itemLeadingEdge ? element : max,
          );
      bloc.add(FeedEvent.select(selectedMeme.index));
      print('selectedMeme: $selectedMeme');
    });

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Overlay.of(context)!.insert(overlay);
    });
  }

  late OverlayEntry overlay;
  final ScrollController controller = ScrollController();
  final ItemPositionsListener listener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: Text('loading...'));
        }

        return ScrollablePositionedList.builder(
          itemCount: state.memes.length,
          itemPositionsListener: listener,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.amber,
              child: Image.network(state.memes[index].imageLink),
            );
          },
        );
      },
    );
  }
}
