part of 'forgot_bloc.dart';

/// this states store event and verify that
/// 
@freezed
class ForgotState with _$ForgotState {
 const factory ForgotState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> authFailureOrSuccessOption,
  }) = _ForgotState;

  factory ForgotState.initial() => ForgotState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}