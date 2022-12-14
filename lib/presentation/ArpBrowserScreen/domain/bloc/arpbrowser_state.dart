part of 'arpbrowser_bloc.dart';

@freezed
class ArpbrowserState with _$ArpbrowserState {
  /// this state initial to bloc
  ///
  const factory ArpbrowserState.initial() = Initials;

  /// this state will call when event communiate to state/ server
  ///
  const factory ArpbrowserState.loading() = Loading;
  const factory ArpbrowserState.searchState(SearchModel searchModel) = SearchState;
  const factory ArpbrowserState.getDataSearch(ArpSearchModel arpSearchModel) = GetDataSearch;
const factory ArpbrowserState.morelikeThisSucess(Morelikethismodel morelikethismodel) = MorelikeThisSuccess;
  /// this state return if any exception between  event and state/server and store
  /// all exception of all params
  /// and perform example in our ui loading indiator
  ///
  const factory ArpbrowserState.failureState( Option<Either<Failure, Unit>> authFailureOrSuccessOption,) = FailureState;

  /// this state store  if communiation success then show data in our ui
  ///
  const factory ArpbrowserState.success(ArpBrowserModel arpBrowserModel) =
      Success;

  /// this state store  if communiation success then show data in our ui
  ///
  const factory ArpbrowserState.addToListSuccess() = AddToListSuccess;

  
}
