part of 'login_bloc.dart';
@freezed
class LoginState with _$LoginState {
 const factory LoginState({
    required EmailAddress emailAddress,
    required Password password,
    required bool showErrorMessages,
    
    required bool isSubmitting,
    required Option<Either<Failure, Unit>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        emailAddress: EmailAddress(''),
        password: Password(''),
       
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}