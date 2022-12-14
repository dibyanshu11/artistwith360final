part of 'arp_selection_bloc.dart';



@freezed
class ArpSelectionState with _$ArpSelectionState {
  /// this state initial to bloc
  ///
  const factory ArpSelectionState.initial() = Initial;

  /// this state will call when event communiate to state/ server
  ///
  const factory ArpSelectionState.loading() = Loading;
 
  /// this state return if any exception between  event and state/server and store
  /// all exception of all params
  /// and perform example in our ui loading indiator
  ///
  const factory ArpSelectionState.failureState( Option<Either<Failure, Unit>> authFailureOrSuccessOption,) = FailureState;

  /// this state store  if communiation success then show data in our ui
  ///
  const factory ArpSelectionState.getArpsuccess(ArpViewModel arpViewModel) =
      GetArpsuccess;


  
}