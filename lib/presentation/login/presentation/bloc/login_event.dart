part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  /// this event will fired when Email Changed
  ///
  const factory LoginEvent.emailChanged(String emailStr) = EmailChanged;

  /// this event will fired when Password Changed
  ///
  const factory LoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  /// this event will fired when Confirmpassword Changed
  ///

  const factory LoginEvent.registerButtonTapped() = RegisterButtonTapped;
}
