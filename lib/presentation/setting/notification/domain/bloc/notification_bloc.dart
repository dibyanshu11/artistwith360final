import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/presentation/setting/notification/domain/usecase/notification_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(this.notification) : super(NotificationState.initial());
  final Notification notification;
  dynamic clip;
  dynamic episode;
  @override
  Stream<NotificationState> mapEventToState(NotificationEvent event) async* {
    yield* event.map(episodeChanged: (EpisodeChanged episodeChanged) async* {
      clip = episodeChanged.episodeStr;
    }, clipChanged: (ClipChanged clipChanged) async* {
      episode = clipChanged.clipStr;
    }, notifiationButtonTapped:
        (NotifiationButtonTapped notifiationButtonTapped) async* {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      var failureOrSuccess =
          await notification(NotificationParams(episode: episode, clip: clip));
      yield state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
