part of 'start_screen_1_notifier.dart';

/// Represents the state of StartScreen1 in the application.

// ignore_for_file: must_be_immutable
class StartScreen1State extends Equatable {
  StartScreen1State({this.startScreen1ModelObj});

  StartScreen1Model? startScreen1ModelObj;

  @override
  List<Object?> get props => [startScreen1ModelObj];
  StartScreen1State copyWith({StartScreen1Model? startScreen1ModelObj}) {
    return StartScreen1State(
      startScreen1ModelObj: startScreen1ModelObj ?? this.startScreen1ModelObj,
    );
  }
}
