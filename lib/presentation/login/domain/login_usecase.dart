import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../core/usecase/usecases.dart';
import '../../register/domain/use_cases.dart';

class EmailLogin implements UseCase<Unit, EmailAuthParams> {
  UserRepository userRepository;
  EmailLogin(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(EmailAuthParams params) async {
    return userRepository.emailLogin(params);
  }
}