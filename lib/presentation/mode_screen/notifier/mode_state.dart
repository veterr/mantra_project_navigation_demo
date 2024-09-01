part of 'mode_notifier.dart';

/// Represents the state of Mode in the application.

// ignore_for_file: must_be_immutable
class ModeState extends Equatable {
  ModeState({this.sliderIndex = 0, this.modeModelObj});

  ModeModel? modeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, modeModelObj];
  ModeState copyWith({
    int? sliderIndex,
    ModeModel? modeModelObj,
  }) {
    return ModeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      modeModelObj: modeModelObj ?? this.modeModelObj,
    );
  }
}
