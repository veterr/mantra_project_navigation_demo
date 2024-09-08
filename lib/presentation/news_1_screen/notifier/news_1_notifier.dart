import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/news_1_model.dart';
part 'news_1_state.dart';

final news1Notifier = StateNotifierProvider<News1Notifier, News1State>(
  (ref) => News1Notifier(News1State(
    news1ModelObj: News1Model(),
  )),
);

/// A notifier that manages the state of a News1 according to the event that is dispatched to it.
class News1Notifier extends StateNotifier<News1State> {
  News1Notifier(News1State state) : super(state);
}
