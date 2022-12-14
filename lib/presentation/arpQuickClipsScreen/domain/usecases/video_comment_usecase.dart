import 'package:artist_replugged/presentation/arpQuickClipsScreen/entity/entity.dart';
import 'package:dartz/dartz.dart';

import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';

import '../../../../domain/user_repository.dart';

class QuickComment implements UseCase<void, LikeCommentParams> {
  UserRepository userRepository;
  QuickComment(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(
      LikeCommentParams likeCommentParams) async {
    return userRepository.quickComment(likeCommentParams);
  }
}
