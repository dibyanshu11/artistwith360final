import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:artist_replugged/core/failure/failure.dart';

import '../../../../core/auth/validators.dart';
import '../../domain/use_cases.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this.emailSignup) : super(RegisterState.initial());
  final EmailSignup emailSignup;
  String password = '';
  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    yield* event.map(emailChanged: (EmailChanged emailChanged) async* {
      yield (state.copyWith(
        emailAddress: EmailAddress(emailChanged.emailStr),
        authFailureOrSuccessOption: none(),
      ));
    }, confirmPasswordChanged: (ConfirmPasswordChanged value) async* {
      password = value.confirmPasswordStr;
      yield (state.copyWith(
        confirmPassword: ConfirmPassword(value.confirmPasswordStr),
        authFailureOrSuccessOption: none(),
      ));
    }, passwordChanged: (PasswordChanged value) async* {
      yield (state.copyWith(
        password: Password(value.passwordStr),
        authFailureOrSuccessOption: none(),
      ));
    }, registerButtonTapped: (RegisterButtonTapped value) async* {
      print('djgdjdjk${state.confirmPassword.value.getOrElse(() => '')}');
      Either<Failure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await emailSignup(EmailAuthParams(
          name: '',
          email: state.emailAddress.value.getOrElse(() => ''),
          password: state.password.value.getOrElse(() => ''),
          cPassword: password));
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess));
      yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: none());
    });
  }
}
