import 'package:devour/application/feed/bloc/feed_bloc.dart';
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
        return Center(
            child: Image.network(state.memes[state.iterator].imageLink));
      },
    );
  }
}
