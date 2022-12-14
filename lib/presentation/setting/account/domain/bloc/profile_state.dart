part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
 const factory ProfileState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    required ConfirmPassword confirmPassword,
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> authFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        emailAddress: EmailAddress(''),
        password: Password(''),
       confirmPassword: ConfirmPassword(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}