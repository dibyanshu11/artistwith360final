part of 'forgot_bloc.dart';
@freezed
 class ForgotEvent with _$ForgotEvent{

  /// this event  fired when email Changed
  /// 
  const factory ForgotEvent.emailChanged(String emailStr) = EmailChanged;
   /// this event  fired when verifyButtonTapped
   /// 
   const factory ForgotEvent.verifyButtonTapped() = VerifyButtonTapped;

  /// this event  fired when new password changed
  /// 
  const factory ForgotEvent.newPasswordChanged(String passwordStr) = NewPasswordChanged;

   /// this event  fired when new otp changed
  /// 
  const factory ForgotEvent.otpChanged(String otpStr) = OtpChanged;
   /// this event  fired when verifyButtonTapped
   /// 
   const factory ForgotEvent.passwordButtonTapped() = PasswordButtonTapped;
 }
