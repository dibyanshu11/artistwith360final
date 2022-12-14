import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/presentation/setting/support/domain/useases/support_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/auth/validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'support_event.dart';
part 'support_state.dart';
part 'support_bloc.freezed.dart';

class SupportBloc extends Bloc<SupportEvent, SupportState> {
  SupportBloc(this.support) : super(SupportState.initial());
  final Support support;
  String name = '';
  String reasion = '';
  @override
  Stream<SupportState> mapEventToState(SupportEvent event) async* {
    yield* event.map(emailChanged: (EmailChanged emailChaned) async* {
      yield state.copyWith(emailAddress: EmailAddress(emailChaned.emailStr));
    }, nameChanged: (NameChanged nameChanged) async* {
      name = nameChanged.nameStr;
    }, reasionChanged: (ReasionChanged reasionChanged) async* {
      reasion = reasionChanged.reasionStr;
    }, messageChanged: (MessageChanged messageChanged) async* {
      yield state.copyWith(
          messageValidator: MessageValidator(messageChanged.messageStr));
    }, reportButtonTap: (ReportButtonTap reportButtonTap) async* {
      yield state.copyWith(
          authFailureOrSuccessOption: none(), isSubmitting: true);
      var failureOrsuccess = await support(SupportParams(
          state.emailAddress.value.getOrElse(() => ''),
          name,
          reasion,
          state.messageValidator.value.getOrElse(() => '')));
      yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrsuccess));
    });
  }
}
