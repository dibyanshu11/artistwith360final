import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';
import 'package:artist_replugged/domain/models/quickClipModel/quick_clip_models.dart';
import 'package:dartz/dartz.dart';

import '../../../../domain/user_repository.dart';

class Quick implements UseCase<void, Unit> {
  UserRepository userRepository;
  Quick(this.userRepository);
  @override
  Future<Either<Failure, QuickClipsModel>> call(Unit params) async {
    return userRepository.quick();
  }
}
