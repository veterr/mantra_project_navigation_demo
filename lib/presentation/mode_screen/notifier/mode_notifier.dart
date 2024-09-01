import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/mode_model.dart';
import '../models/slidersection_item_model.dart';
part 'mode_state.dart';

final modeNotifier = StateNotifierProvider<ModeNotifier, ModeState>(
  (ref) => ModeNotifier(ModeState(
    sliderIndex: 0,
    modeModelObj: ModeModel(slidersectionItemList: [
      SlidersectionItemModel(
          dynamictext1: "3",
          min: "Min",
          dynamictext2: "chanting mantra",
          dynamictext3: "Training level",
          done: "Done",
          dynamicImage: ImageConstant.imgDone1LightGreen300),
      SlidersectionItemModel()
    ]),
  )),
);

/// A notifier that manages the state of a Mode according to the event that is dispatched to it.
class ModeNotifier extends StateNotifier<ModeState> {
  ModeNotifier(ModeState state) : super(state);
}
