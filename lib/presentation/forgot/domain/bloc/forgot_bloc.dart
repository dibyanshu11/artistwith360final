import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/forgot/domain/usecases/forgot_email.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kiwi/kiwi.dart';
import '../../../../core/auth/validators.dart';
import '../../../../core/failure/failure.dart';
part 'forgot_bloc.freezed.dart';
part 'forgot_event.dart';
part 'forgot_state.dart';

class ForgotBloc extends Bloc<ForgotEvent, ForgotState> {
  final ForgotEmail forgotEmail;
  final SetNewPassword setNewPassword;
  ForgotBloc(this.forgotEmail, this.setNewPassword)
      : super(ForgotState.initial());
  SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
  @override
  Stream<ForgotState> mapEventToState(ForgotEvent event) async* {
    yield* event.map(emailChanged: (EmailChanged emailChanged) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(emailChanged.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, verifyButtonTapped: (VerifyButtonTapped verifyButtonTapped) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      var failureOrsuccess = await forgotEmail(
        state.emailAddress.value.getOrElse(() => ''),
      );
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrsuccess));
    }, newPasswordChanged: (NewPasswordChanged newPasswordChanged) async* {
      yield state.copyWith(
        password: Password(newPasswordChanged.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, otpChanged: (OtpChanged otpChanged) async* {
      // if (prefHelper.getIntByKey('otp', 0) !=
      //     int.parse(otpChanged.otpStr.toString())) {
      //   yield state.copyWith(showErrorMessages: true);
      // }
    }, passwordButtonTapped:
        (PasswordButtonTapped passwordButtonTapped) async* {
      print('dddd');
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      var failureOrsuccess = await setNewPassword(SetPasswordParams(
          prefHelper.getIntByKey('otp', 0).toString(),
          state.password.value.getOrElse(() => '').toString()));
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrsuccess));
    });
  }
}
