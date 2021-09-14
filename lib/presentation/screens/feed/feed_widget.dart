import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/presentation/screens/feed/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

        // final currentPost = state.memes[state.iterator];
        return PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: state.memes.length,
          itemBuilder: (BuildContext context, int index) {
            return PostWidget(state.memes[index]);
          },
        );
        // ListWheelScrollView(
        //   itemExtent: itemExtent,
        //   children: state.memes.map((post) => PostWidget(currentPost: post)).toList(),
        // );
      },
    );
  }
}
