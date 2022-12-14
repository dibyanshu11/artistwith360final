part of 'support_bloc.dart';

@freezed
class SupportState with _$SupportState {
 const factory SupportState({
    required EmailAddress emailAddress,
    required MessageValidator messageValidator,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> authFailureOrSuccessOption,
  }) = _SupportState;

  factory SupportState.initial() => SupportState(
        emailAddress: EmailAddress(''),
        showErrorMessages: false,
        isSubmitting: false,
        messageValidator: MessageValidator(''),
        authFailureOrSuccessOption: none(),
      );
}