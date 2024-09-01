import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'slidersection_item_model.dart';

/// This class defines the variables used in the [mode_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ModeModel extends Equatable {
  ModeModel({this.slidersectionItemList = const []});

  List<SlidersectionItemModel> slidersectionItemList;

  ModeModel copyWith({List<SlidersectionItemModel>? slidersectionItemList}) {
    return ModeModel(
      slidersectionItemList:
          slidersectionItemList ?? this.slidersectionItemList,
    );
  }

  @override
  List<Object?> get props => [slidersectionItemList];
}
