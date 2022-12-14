part of 'support_bloc.dart';

@freezed
class SupportEvent with _$SupportEvent {
  /// this event will fired when Email Changed
  /// 
const factory SupportEvent.emailChanged(String emailStr) = EmailChanged;
  /// this event will fired when name Changed
  /// 
const factory SupportEvent.nameChanged(String nameStr) = NameChanged;
 /// this event will fired when reasion Changed
  /// 
const factory SupportEvent.reasionChanged(String reasionStr) = ReasionChanged;
 /// this event will fired when message Changed
  /// 
const factory SupportEvent.messageChanged(String messageStr) = MessageChanged;

/// this event will fired when  ReportButtonTap
  /// 
const factory SupportEvent.reportButtonTap() = ReportButtonTap;
}
