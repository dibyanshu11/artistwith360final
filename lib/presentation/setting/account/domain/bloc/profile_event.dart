part of 'profile_bloc.dart';
@freezed
class ProfileEvent with _$ProfileEvent {
  /// this event will fired when Email Changed
  /// 
const factory ProfileEvent.emailChanged(String emailStr) = EmailChanged;
  /// this event will fired when Password Changed
  /// 
const factory ProfileEvent.nameChanged(String nameStr) = NameChanged;
 /// this event will fired when nameChanged Changed
  /// 
const factory ProfileEvent.phoneChanged(String phoneStr) = PhoneChanged;
 /// this event will fired when phoneChanged Changed
  /// 
const factory ProfileEvent.passwordChanged(String passwordStr) = PasswordChanged;
  /// this event will fired when Confirmpassword Changed
  /// 
const factory ProfileEvent.confirmPasswordChanged(String confirmPasswordStr) = ConfirmPasswordChanged;
/// this event will fired when  RegisterButtonTapped
  /// 
const factory ProfileEvent.profileButtonTap() = profileButtonTap;
}
