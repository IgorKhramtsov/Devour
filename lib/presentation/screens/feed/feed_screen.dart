import 'package:devour/application/feed/bloc/feed_bloc.dart';
import 'package:devour/domain/meme/abstract_meme_model.dart';
import 'package:devour/domain/meme_scrapper/i_meme_scrapper_facade.dart';
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
      create: (context) => getIt.get<FeedBloc>(
          // maybe its not the best soltion, but i don't know, how to do injectable
          // with generics like <T extends AbstractMemeModel>
          param1: getIt.get<IMemeScrapperFacade<RedditMemeModel>>())
        ..add(FeedEvent.init()),
      child: Feed(),
    ));
  }
}
