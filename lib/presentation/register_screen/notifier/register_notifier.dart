import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/register_model.dart';
part 'register_state.dart';

final registerNotifier = StateNotifierProvider<RegisterNotifier, RegisterState>(
  (ref) => RegisterNotifier(RegisterState(
    nameEditTextController: TextEditingController(),
    registerModelObj: RegisterModel(),
  )),
);

/// A notifier that manages the state of a Register according to the event that is dispatched to it.
class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier(RegisterState state) : super(state);
}
