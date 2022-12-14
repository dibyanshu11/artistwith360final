import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';
import 'package:artist_replugged/domain/models/arpQuickModel/arp_browseModel.dart';
import '../../../../domain/user_repository.dart';

class ArpBrowserUseCase implements UseCase<void, String> {
  UserRepository userRepository;
  ArpBrowserUseCase(this.userRepository);
  @override
  Future<Either<Failure, ArpBrowserModel>> call(String text) async {
    return userRepository.arpBrowser(text);
  }
}

class AddToList implements UseCase<Unit, AddToListParams> {
  UserRepository userRepository;
  AddToList(this.userRepository);
  @override
  Future<Either<Failure, Unit>> call(AddToListParams params) async {
    return userRepository.addToList(params);
  }
}

class AddToListParams {
  String documentId;
  String type;
  AddToListParams({
    required this.documentId,
    required this.type,
  });

  @override
  String toString() => 'AddToListParams(documentId: $documentId, type: $type)';

  AddToListParams copyWith({
    String? documentId,
    String? type,
  }) {
    return AddToListParams(
      documentId: documentId ?? this.documentId,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'documentId': documentId});
    result.addAll({'type': type});

    return result;
  }

  factory AddToListParams.fromMap(Map<String, dynamic> map) {
    return AddToListParams(
      documentId: map['documentId'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AddToListParams.fromJson(String source) =>
      AddToListParams.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddToListParams &&
        other.documentId == documentId &&
        other.type == type;
  }

  @override
  int get hashCode => documentId.hashCode ^ type.hashCode;
}
