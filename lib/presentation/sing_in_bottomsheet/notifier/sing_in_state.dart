part of 'sing_in_notifier.dart';

/// Represents the state of SingIn in the application.

// ignore_for_file: must_be_immutable
class SingInState extends Equatable {
  SingInState({this.singInModelObj});

  SingInModel? singInModelObj;

  @override
  List<Object?> get props => [singInModelObj];
  SingInState copyWith({SingInModel? singInModelObj}) {
    return SingInState(
      singInModelObj: singInModelObj ?? this.singInModelObj,
    );
  }
}
