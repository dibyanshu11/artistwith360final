
import 'package:dartz/dartz.dart';

import '../../../core/failure/failure.dart';
import '../../../core/usecase/usecases.dart';
import '../../../domain/user_repository.dart';

class EmailSignup implements UseCase<Unit, EmailAuthParams> {
  UserRepository userRepository;
  EmailSignup(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(EmailAuthParams params) async {
    return userRepository.emailSignup(params);
  }
}

class EmailAuthParams {
  /// email to use for login
  final String email;
  final String? name;
  
  /// password to use for login
  final String password;
  final String? cPassword;

  const EmailAuthParams({
this.name,
    required this.email,
    required this.password,
    this.cPassword,
  });

  List<Object> get props => [
        email,
        password,
        cPassword.toString(),
      ];

  /// this allow to value equality check
  ///
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmailAuthParams &&
        other.email == email &&
        other.cPassword == cPassword &&
        other.name== name &&
        other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode ^ cPassword.hashCode ^ name.hashCode;

  /// convered all values in String
  ///
  @override
  String toString() =>
      'EmailAuthParams(email: $email, password: $password,cPasword:$cPassword,name:$name)';
}
