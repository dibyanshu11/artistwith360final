import 'package:artist_replugged/core/auth/validators.dart';
import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/presentation/login/domain/login_usecase.dart';
import 'package:artist_replugged/presentation/register/domain/use_cases.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final EmailLogin emailLogin;
  LoginBloc(this.emailLogin) : super(LoginState.initial());
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(emailChanged: (EmailChanged emailChanged) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(emailChanged.emailStr),
        authFailureOrSuccessOption: none(),
      );
      print('dddd ${emailChanged.emailStr}');
    }, passwordChanged: (PasswordChanged passwordChanged) async* {
      yield state.copyWith(password: Password(passwordChanged.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, registerButtonTapped:
        (RegisterButtonTapped registerButtonTapped) async* {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      print(
          'hsakjfhjklhsfalksfh ${state.emailAddress.value.getOrElse(() => '')}');
      var failureOrsuccess = await emailLogin(EmailAuthParams(
          email: state.emailAddress.value.getOrElse(() => ''),
          password: state.password.value.getOrElse(() => '')));
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrsuccess));
    });
  }
}
