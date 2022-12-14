import 'package:dartz/dartz.dart';

import '../valueFailure/failures.dart';
import '../valueFailure/value_object.dart';
import 'auth.dart';

/// now
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

/// password validator
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      passwordValidator(input),
    );
  }

  const Password._(this.value);
}
 class ConfirmPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ConfirmPassword(String input) {
    return ConfirmPassword._(
      confirmPasswordValidator(input),
    );
  }

  const ConfirmPassword._(this.value);
}
 class MessageValidator extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MessageValidator(String input) {
    return MessageValidator._(
      messageValidator(input),
    );
  }

  const MessageValidator._(this.value);
}
 class NameValidator extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NameValidator(String input) {
    return NameValidator._(
      nameValidator(input),
    );
  }

  const NameValidator._(this.value);
}
 class ReasionValidator extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ReasionValidator(String input) {
    return ReasionValidator._(
      reasionValidator(input),
    );
  }

  const ReasionValidator._(this.value);
}