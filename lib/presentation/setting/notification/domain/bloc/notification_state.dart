part of 'notification_bloc.dart';


@freezed
class NotificationState with _$NotificationState {
 const factory NotificationState({
  
    required bool showErrorMessages,
    
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> authFailureOrSuccessOption,
  }) = _NotificationStatet;

  factory NotificationState.initial() => NotificationState(
       
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}