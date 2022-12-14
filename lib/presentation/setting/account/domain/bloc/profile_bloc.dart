import 'dart:developer';

import 'package:artist_replugged/presentation/setting/account/domain/usecases/profile_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:artist_replugged/core/auth/validators.dart';

import '../../../../../core/failure/failure.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUpdate profileUpdate;
  ProfileBloc(this.profileUpdate) : super(ProfileState.initial());
  String name = '';
  String phone = '';
  String cPasword = '';
  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(emailChanged: (EmailChanged emailChaned) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(emailChaned.emailStr),
        authFailureOrSuccessOption: none(),
      );
    }, nameChanged: (NameChanged nameChanged) async* {
      name = nameChanged.nameStr;
    }, phoneChanged: (PhoneChanged phoneChanged) async* {
      phone = phoneChanged.phoneStr;
    }, passwordChanged: (PasswordChanged passwordChanged) async* {
      yield state.copyWith(
        password: Password(passwordChanged.passwordStr),
        authFailureOrSuccessOption: none(),
      );
    }, confirmPasswordChanged:
        (ConfirmPasswordChanged confirmPasswordChanged) async* {
      cPasword = confirmPasswordChanged.confirmPasswordStr;
      log('ejjglkj===??${confirmPasswordChanged.confirmPasswordStr}');
      yield state.copyWith(
        confirmPassword:
            ConfirmPassword(confirmPasswordChanged.confirmPasswordStr),
        authFailureOrSuccessOption: none(),
      );
    }, profileButtonTap: (profileButtonTap profileButtonTapped) async* {
      log('ejjglkj===??${state.confirmPassword.value.getOrElse(() => '')}');
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      var authFailureOrSuccess = await profileUpdate(ProfileAuthParams(
          email: state.emailAddress.value.getOrElse(() => ''),
          name: name,
          phone: phone,
          password: state.password.value.getOrElse(() => ''),
          cPassword: cPasword));

      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(authFailureOrSuccess));
    });
  }
}
