import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/advanced_level_model.dart';
part 'advanced_level_state.dart';

final advancedLevelNotifier =
    StateNotifierProvider<AdvancedLevelNotifier, AdvancedLevelState>(
  (ref) => AdvancedLevelNotifier(AdvancedLevelState(
    advancedLevelModelObj: AdvancedLevelModel(),
  )),
);

/// A notifier that manages the state of a AdvancedLevel according to the event that is dispatched to it.
class AdvancedLevelNotifier extends StateNotifier<AdvancedLevelState> {
  AdvancedLevelNotifier(AdvancedLevelState state) : super(state);
}
