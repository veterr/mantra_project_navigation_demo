import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/loged_in_level_select_model.dart';
part 'loged_in_level_select_state.dart';

final logedInLevelSelectNotifier =
    StateNotifierProvider<LogedInLevelSelectNotifier, LogedInLevelSelectState>(
  (ref) => LogedInLevelSelectNotifier(LogedInLevelSelectState(
    logedInLevelSelectModelObj: LogedInLevelSelectModel(),
  )),
);

/// A notifier that manages the state of a LogedInLevelSelect according to the event that is dispatched to it.
class LogedInLevelSelectNotifier
    extends StateNotifier<LogedInLevelSelectState> {
  LogedInLevelSelectNotifier(LogedInLevelSelectState state) : super(state);
}
