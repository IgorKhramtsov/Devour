import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/presentation/screens/feed/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late OverlayEntry overlay;
  @override
  void initState() {
    super.initState();
    final bloc = BlocProvider.of<FeedBloc>(context);
    overlay = OverlayEntry(
      builder: (BuildContext ctx) => PostOverlayWidget(bloc),
    );

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Overlay.of(context)!.insert(overlay);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: Text('loading...'));
        }

        return PageView.builder(
          itemCount: state.memes.length,
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
