import 'package:dartz/dartz.dart';

import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/domain/user_repository.dart';

import '../../../../../core/usecase/usecases.dart';

class Support implements UseCase<Unit, SupportParams> {
  UserRepository userRepository;
  Support(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(SupportParams params) async {
    return userRepository.support(params);
  }
}

class SupportParams {
  final String email;
  final String name;
  final String reasion;
  final String message;

  SupportParams(
    this.email,
    this.name,
    this.reasion,
    this.message,
  );

  @override
  String toString() {
    return 'SupportParams(email: $email, name: $name, reasion: $reasion, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SupportParams &&
        other.email == email &&
        other.name == name &&
        other.reasion == reasion &&
        other.message == message;
  }

  @override
  int get hashCode {
    return email.hashCode ^ name.hashCode ^ reasion.hashCode ^ message.hashCode;
  }

  SupportParams copyWith({
    String? email,
    String? name,
    String? reasion,
    String? message,
  }) {
    return SupportParams(
      email ?? this.email,
      name ?? this.name,
      reasion ?? this.reasion,
      message ?? this.message,
    );
  }
}
