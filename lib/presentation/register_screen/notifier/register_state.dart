part of 'register_notifier.dart';

/// Represents the state of Register in the application.

// ignore_for_file: must_be_immutable
class RegisterState extends Equatable {
  RegisterState({this.nameEditTextController, this.registerModelObj});

  TextEditingController? nameEditTextController;

  RegisterModel? registerModelObj;

  @override
  List<Object?> get props => [nameEditTextController, registerModelObj];
  RegisterState copyWith({
    TextEditingController? nameEditTextController,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
