import 'package:artist_replugged/core/failure/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {
  List<Object> get props => [dynamic];
}
