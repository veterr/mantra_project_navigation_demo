part of 'advanced_level_notifier.dart';

/// Represents the state of AdvancedLevel in the application.

// ignore_for_file: must_be_immutable
class AdvancedLevelState extends Equatable {
  AdvancedLevelState({this.advancedLevelModelObj});

  AdvancedLevelModel? advancedLevelModelObj;

  @override
  List<Object?> get props => [advancedLevelModelObj];
  AdvancedLevelState copyWith({AdvancedLevelModel? advancedLevelModelObj}) {
    return AdvancedLevelState(
      advancedLevelModelObj:
          advancedLevelModelObj ?? this.advancedLevelModelObj,
    );
  }
}
