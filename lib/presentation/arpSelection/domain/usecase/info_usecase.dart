import 'package:dartz/dartz.dart';
import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/usecase/usecases.dart';

import '../../../../domain/models/search_model.dart';
import '../../../../domain/models/selectedDocumentaryModel/selected_documentary_model.dart';
import '../../../../domain/user_repository.dart';

class ArpView implements UseCase<void, dynamic> {
  UserRepository userRepository;
  ArpView(this.userRepository);
  @override
  Future<Either<Failure, ArpViewModel>> call(dynamic ids) async {
    return userRepository.arpView(ids);
  }
}

class ArpViewSearch implements UseCase<void, SearchParams> {
  UserRepository userRepository;
  ArpViewSearch(this.userRepository);
  @override
  Future<Either<Failure, ArpSearchModel>> call(
      SearchParams searchParams) async {
    return userRepository.arpViewSearch(searchParams);
  }
}

class SearchParams {
  /// email to use for login
  final String id;
  final String? text1;

  /// password to use for login
  final String text2;

  const SearchParams({
    required this.id,
    required this.text1,
    required this.text2,
  });
}
