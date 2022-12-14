part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  /// this event will fired when episode Changed
  ///
  const factory NotificationEvent.episodeChanged(dynamic episodeStr) =
      EpisodeChanged;

  /// this event will fired when clip Changed
  ///
  const factory NotificationEvent.clipChanged(dynamic clipStr) = ClipChanged;

  /// this event will fired when notifiationButtonTapped
  ///

  const factory NotificationEvent.notifiationButtonTapped() =
      NotifiationButtonTapped;
}
