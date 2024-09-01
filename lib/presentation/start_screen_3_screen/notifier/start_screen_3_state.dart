part of 'start_screen_3_notifier.dart';

/// Represents the state of StartScreen3 in the application.

// ignore_for_file: must_be_immutable
class StartScreen3State extends Equatable {
  StartScreen3State({this.startScreen3ModelObj});

  StartScreen3Model? startScreen3ModelObj;

  @override
  List<Object?> get props => [startScreen3ModelObj];
  StartScreen3State copyWith({StartScreen3Model? startScreen3ModelObj}) {
    return StartScreen3State(
      startScreen3ModelObj: startScreen3ModelObj ?? this.startScreen3ModelObj,
    );
  }
}
