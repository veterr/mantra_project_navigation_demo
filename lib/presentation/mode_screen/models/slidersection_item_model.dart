import '../../../core/app_export.dart';

/// This class is used in the [slidersection_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SlidersectionItemModel {
  SlidersectionItemModel(
      {this.dynamictext1,
      this.min,
      this.dynamictext2,
      this.dynamictext3,
      this.done,
      this.dynamicImage,
      this.id}) {
    dynamictext1 = dynamictext1 ?? "3";
    min = min ?? "Min";
    dynamictext2 = dynamictext2 ?? "chanting mantra";
    dynamictext3 = dynamictext3 ?? "Training level";
    done = done ?? "Done";
    dynamicImage = dynamicImage ?? ImageConstant.imgDone1LightGreen300;
    id = id ?? "";
  }

  String? dynamictext1;

  String? min;

  String? dynamictext2;

  String? dynamictext3;

  String? done;

  String? dynamicImage;

  String? id;
}
