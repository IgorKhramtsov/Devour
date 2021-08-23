import 'dart:async';

import 'package:devour/domain/meme/abstract_meme_model.dart';

abstract class IMemeScrapperFacade<T extends AbstractMemeModel> {
  Future<T> getOneMeme();
  Future<List<T>> getMemes(int count);
}
