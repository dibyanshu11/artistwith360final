import 'package:artist_replugged/core/valueFailure/UnexpectedValueErrore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';


import 'failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  T getOrCrash() {
    ///Throws [unexceptaded Value ] containing the [ValueFailure] 
    // ignore: always_specify_types
    ///id = identity - same as writing (right) =>right;
    return value.fold(
        (ValueFailure<T> f) => throw UnexpectedValueErrore(f), id);
  }

  bool isValid() => value.isRight();
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
