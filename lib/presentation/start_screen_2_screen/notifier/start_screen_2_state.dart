part of 'start_screen_2_notifier.dart';

/// Represents the state of StartScreen2 in the application.

// ignore_for_file: must_be_immutable
class StartScreen2State extends Equatable {
  StartScreen2State({this.startScreen2ModelObj});

  StartScreen2Model? startScreen2ModelObj;

  @override
  List<Object?> get props => [startScreen2ModelObj];
  StartScreen2State copyWith({StartScreen2Model? startScreen2ModelObj}) {
    return StartScreen2State(
      startScreen2ModelObj: startScreen2ModelObj ?? this.startScreen2ModelObj,
    );
  }
}
