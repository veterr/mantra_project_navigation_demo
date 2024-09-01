import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/sing_in_model.dart';
part 'sing_in_state.dart';

final singInNotifier = StateNotifierProvider<SingInNotifier, SingInState>(
  (ref) => SingInNotifier(SingInState(
    singInModelObj: SingInModel(),
  )),
);

/// A notifier that manages the state of a SingIn according to the event that is dispatched to it.
class SingInNotifier extends StateNotifier<SingInState> {
  SingInNotifier(SingInState state) : super(state);
}
