part of 'loged_in_level_select_notifier.dart';

/// Represents the state of LogedInLevelSelect in the application.

// ignore_for_file: must_be_immutable
class LogedInLevelSelectState extends Equatable {
  LogedInLevelSelectState({this.logedInLevelSelectModelObj});

  LogedInLevelSelectModel? logedInLevelSelectModelObj;

  @override
  List<Object?> get props => [logedInLevelSelectModelObj];
  LogedInLevelSelectState copyWith(
      {LogedInLevelSelectModel? logedInLevelSelectModelObj}) {
    return LogedInLevelSelectState(
      logedInLevelSelectModelObj:
          logedInLevelSelectModelObj ?? this.logedInLevelSelectModelObj,
    );
  }
}
