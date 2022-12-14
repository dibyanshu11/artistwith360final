import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/domain/models/searchModel/search_model.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../core/usecase/usecases.dart';

class Search implements UseCase<void, Unit> {
  UserRepository userRepository;
  Search(this.userRepository);
  @override
  Future<Either<Failure, SearchModel>> call(Unit params) async {
    return userRepository.search();
  }
}
