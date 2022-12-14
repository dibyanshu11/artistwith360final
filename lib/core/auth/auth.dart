import 'package:dartz/dartz.dart';
import '../valueFailure/failures.dart';

var store = '';

/// this email validtor ready to perform changes
///
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r'{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]'
      r'{0,253}[a-zA-Z0-9])?)*$';
  if (RegExp(emailRegex).hasMatch(input.replaceAll(' ', ''))) {
    /// if email is correct return right
    return right(input);
  } else {
    /// if email is Incorrect return right
    // ignore: always_specify_types
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

/// this validator perform password validation changed
///
Either<ValueFailure<String>, String> passwordValidator(String input) {
  if (input.length >= 6) {
    /// if email is correct return right
    ///
    print('dhkldjfkl');
    return right(input);
  } else {
    print('jf;ljf');

    /// if email is Incorrect return right
    ///
    // ignore: always_specify_types
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

/// this validator perform Confirmpassword validation changed
///
Either<ValueFailure<String>, String> confirmPasswordValidator(String input) {
  if (passwordValidator(input).toString().length == input.toString().length) {
    /// if email is correct return right
    ///
    print('hsklshklsfhsklfh');
    return right(input);
  } else {
    print('sjklsjakjop');

    /// if email is Incorrect return right
    ///
    // ignore: always_specify_types
    return left(ValueFailure.passwordNotMathed(failedValue: input));
  }
}

Either<ValueFailure<String>, String> messageValidator(String input) {
  if (input.isNotEmpty) {
    /// if input is not empty return right
    ///

    return right(input);
  } else {
    /// if email is Incorrect return right
    ///
    // ignore: always_specify_types
    return left(ValueFailure.passwordNotMathed(failedValue: input));
  }
}

Either<ValueFailure<String>, String> nameValidator(String input) {
  if (input.isNotEmpty) {
    /// if input is not empty return right
    ///

    return right(input);
  } else {
    /// if email is Incorrect return right
    ///
    // ignore: always_specify_types
    return left(ValueFailure.passwordNotMathed(failedValue: input));
  }
}

Either<ValueFailure<String>, String> reasionValidator(String input) {
   if (input.isNotEmpty) {
    /// if input is not empty return right
    ///

    return right(input);
  } else {
    /// if email is Incorrect return right
    ///
    // ignore: always_specify_types
    return left(ValueFailure.passwordNotMathed(failedValue: input));
  }
}


