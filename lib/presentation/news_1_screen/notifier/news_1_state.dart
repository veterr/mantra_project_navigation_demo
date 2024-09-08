part of 'news_1_notifier.dart';

/// Represents the state of News1 in the application.

// ignore_for_file: must_be_immutable
class News1State extends Equatable {
  News1State({this.news1ModelObj});

  News1Model? news1ModelObj;

  @override
  List<Object?> get props => [news1ModelObj];
  News1State copyWith({News1Model? news1ModelObj}) {
    return News1State(
      news1ModelObj: news1ModelObj ?? this.news1ModelObj,
    );
  }
}
