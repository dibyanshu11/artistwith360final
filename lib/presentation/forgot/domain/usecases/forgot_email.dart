import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';
import 'package:dartz/dartz.dart';

import '../../../../domain/user_repository.dart';

class ForgotEmail implements UseCase<Unit, String> {
  UserRepository userRepository;
  ForgotEmail(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(String email) async {
    return userRepository.forgotEmail(email);
  }
}

class SetNewPassword implements UseCase<Unit, SetPasswordParams> {
  UserRepository userRepository;
  SetNewPassword(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(SetPasswordParams params) async {
    return userRepository.setNewPassword(params);
  }
}

class SetPasswordParams {
  final String otp;
  final String password;

  SetPasswordParams(this.otp, this.password);
}
