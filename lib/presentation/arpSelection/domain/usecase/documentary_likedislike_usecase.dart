import 'package:dartz/dartz.dart';

import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';

import '../../../../domain/user_repository.dart';

class DocumentaryLikeDislike implements UseCase<void, DocumentaryParams> {
  UserRepository userRepository;
  DocumentaryLikeDislike(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(
      DocumentaryParams documentaryParams) async {
    return userRepository.documentaryLikeDislike(documentaryParams);
  }
}

class DocumentaryParams {
  final String id;
  final String type;
  DocumentaryParams({
    required this.id,
    required this.type,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DocumentaryParams && other.id == id && other.type == type;
  }

  @override
  int get hashCode => id.hashCode ^ type.hashCode;

  DocumentaryParams copyWith({
    String? id,
    String? type,
  }) {
    return DocumentaryParams(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  @override
  String toString() => 'DocumentaryParams(id: $id, type: $type)';
}
