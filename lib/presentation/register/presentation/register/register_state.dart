part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
 const factory RegisterState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required ConfirmPassword confirmPassword,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        emailAddress: EmailAddress(''),
        password: Password(''),
       confirmPassword: ConfirmPassword(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}