import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/start_screen_1_model.dart';
part 'start_screen_1_state.dart';

final startScreen1Notifier =
    StateNotifierProvider<StartScreen1Notifier, StartScreen1State>(
  (ref) => StartScreen1Notifier(StartScreen1State(
    startScreen1ModelObj: StartScreen1Model(),
  )),
);

/// A notifier that manages the state of a StartScreen1 according to the event that is dispatched to it.
class StartScreen1Notifier extends StateNotifier<StartScreen1State> {
  StartScreen1Notifier(StartScreen1State state) : super(state);
}
