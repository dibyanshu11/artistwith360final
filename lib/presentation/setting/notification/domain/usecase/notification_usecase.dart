import 'package:dartz/dartz.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecases.dart';
import '../../../../../domain/user_repository.dart';

class Notification implements UseCase<Unit, NotificationParams> {
  UserRepository userRepository;
  Notification(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(NotificationParams params) async {
    return userRepository.notification(params);
  }
}

class NotificationParams {
  final dynamic episode;
  final dynamic clip;
  NotificationParams({
    required this.episode,
    required this.clip,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NotificationParams &&
        other.episode == episode &&
        other.clip == clip;
  }

  @override
  int get hashCode => episode.hashCode ^ clip.hashCode;
}
