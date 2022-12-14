// ignore: depend_on_referenced_packages
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  /// all exceptions || error handle throws this classes

  const factory Failure.serverError() = ServerError;
  const factory Failure.timeout() = TimeOut;
  const factory Failure.connectionFailure() = ConnectionFailure;
  const factory Failure.emailAlreayInUsed() = EmailAlreayInUsed;
  const factory Failure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
