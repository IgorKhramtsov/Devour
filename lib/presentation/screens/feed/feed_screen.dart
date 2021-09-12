import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/infrastructure/meme_scrapper/reddit_scrapper.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/widgets/platform/platform_scaffold.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feed_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: BlocProvider(
        create: (context) => serviceLocator.get<FeedBloc>(
          param1: serviceLocator.get<RedditScrapperFacade>(),
        )..add(const FeedEvent.refresh()),
        child: Feed(),
      ),
    );
  }
}
