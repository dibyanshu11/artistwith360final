
import 'package:artist_replugged/domain/models/mylistModel/mylist_model.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecases.dart';

class MyListUsecase implements UseCase<void, Unit> {
  UserRepository userRepository;
  MyListUsecase(this.userRepository);
  @override
  Future<Either<Failure, MyListModel>> call(Unit params) async {
    return userRepository.myListUsecase();
  }
}