import 'package:dartz/dartz.dart';

import 'package:artist_replugged/core/usecase/usecases.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../domain/user_repository.dart';

class ProfileUpdate implements UseCase<Unit, ProfileAuthParams> {
  UserRepository userRepository;
  ProfileUpdate(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(ProfileAuthParams params) async {
    return userRepository.profileUpdate(params);
  }
}

/// update profile params that store the value by event
///
class ProfileAuthParams {
  final String email;
  final String name;
  final String phone;

  final String password;
  final String? cPassword;
  ProfileAuthParams({
    required this.email,
    required this.name,
    required this.phone,
    required this.password,
    this.cPassword,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProfileAuthParams &&
        other.email == email &&
        other.name == name &&
        other.phone == phone &&
        other.password == password;
  }

  @override
  int get hashCode {
    return email.hashCode ^ name.hashCode ^ phone.hashCode ^ password.hashCode;
  }

  @override
  String toString() {
    return 'ProfileAuthParams(email: $email, name: $name, phone: $phone, password: $password,)';
  }

  ProfileAuthParams copyWith({
    String? email,
    String? name,
    String? phone,
    String? password,
  }) {
    return ProfileAuthParams(
        email: email ?? this.email,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        password: password ?? this.password);
  }
}
