import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';
import 'package:artist_replugged/domain/models/commentModel/commment_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../domain/user_repository.dart';

class GetCommentUseCases implements UseCase<void, int> {
  UserRepository userRepository;
  GetCommentUseCases(this.userRepository);
  @override
  Future<Either<Failure, CommentModel>> call(int id) async {
    return userRepository.getCommentUseCases(id);
  }
}
