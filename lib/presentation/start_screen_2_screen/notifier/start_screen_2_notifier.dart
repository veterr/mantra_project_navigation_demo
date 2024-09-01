import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/start_screen_2_model.dart';
part 'start_screen_2_state.dart';

final startScreen2Notifier =
    StateNotifierProvider<StartScreen2Notifier, StartScreen2State>(
  (ref) => StartScreen2Notifier(StartScreen2State(
    startScreen2ModelObj: StartScreen2Model(),
  )),
);

/// A notifier that manages the state of a StartScreen2 according to the event that is dispatched to it.
class StartScreen2Notifier extends StateNotifier<StartScreen2State> {
  StartScreen2Notifier(StartScreen2State state) : super(state);
}
