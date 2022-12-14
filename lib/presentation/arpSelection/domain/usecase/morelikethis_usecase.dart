import 'package:artist_replugged/domain/models/morelikeThisModel/morelikethis_model.dart';
import 'package:dartz/dartz.dart';

import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';

import '../../../../domain/user_repository.dart';

class MorelikeThisUsecase implements UseCase<void, String> {
  UserRepository userRepository;
  MorelikeThisUsecase(this.userRepository);
  @override
  Future<Either<Failure, Morelikethismodel>> call(String text) async {
    return userRepository.morelikeThisUsecase(text);
  }
}
