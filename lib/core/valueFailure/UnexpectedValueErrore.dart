import 'package:artist_replugged/core/valueFailure/failures.dart';


/// ready to perform if any error before hit the api
///
class UnexpectedValueErrore extends Error {
  // ignore: always_specify_types
  final ValueFailure valueFailure;

  UnexpectedValueErrore(this.valueFailure);
  @override
  String toString() {
    const String explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation  Failure was:$valueFailure');
  }
}
