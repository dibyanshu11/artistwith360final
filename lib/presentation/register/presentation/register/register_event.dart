part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  /// this event will fired when Email Changed
  /// 
const factory RegisterEvent.emailChanged(String emailStr) = EmailChanged;
  /// this event will fired when Password Changed
  /// 
const factory RegisterEvent.passwordChanged(String passwordStr) = PasswordChanged;
  /// this event will fired when Confirmpassword Changed
  /// 
const factory RegisterEvent.confirmPasswordChanged(String confirmPasswordStr) = ConfirmPasswordChanged;
/// this event will fired when  RegisterButtonTapped
  /// 
const factory RegisterEvent.registerButtonTapped() = RegisterButtonTapped;
}