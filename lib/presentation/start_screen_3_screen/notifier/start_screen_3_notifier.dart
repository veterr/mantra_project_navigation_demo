import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/start_screen_3_model.dart';
part 'start_screen_3_state.dart';

final startScreen3Notifier =
    StateNotifierProvider<StartScreen3Notifier, StartScreen3State>(
  (ref) => StartScreen3Notifier(StartScreen3State(
    startScreen3ModelObj: StartScreen3Model(),
  )),
);

/// A notifier that manages the state of a StartScreen3 according to the event that is dispatched to it.
class StartScreen3Notifier extends StateNotifier<StartScreen3State> {
  StartScreen3Notifier(StartScreen3State state) : super(state);
}
