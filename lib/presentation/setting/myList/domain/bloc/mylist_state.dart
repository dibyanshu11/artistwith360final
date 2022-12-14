part of 'mylist_bloc.dart';

@freezed
class MylistState with _$MylistState {
  const factory MylistState.initialState() = InitialsState;

  /// this state will call when event communiate to state/ server
  ///
  const factory MylistState.loadingState() = LoadingState;

  /// this state return if any exception between  event and state/server and store
  /// all exception of all params
  /// and perform example in our ui loading indiator
  ///
  const factory MylistState.failureState(Failure failure) = FailureState;

  /// this state store  if communiation success then show data in our ui
  ///
  const factory MylistState.successState(MyListModel myListModel) = SuccessState;
}
