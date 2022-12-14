part of 'clips_bloc.dart';



@freezed
class ClipsState with _$ClipsState {
  /// this state initial to bloc
  /// 
  const factory ClipsState.initial() = Initials;
   /// this state will call when event communiate to state/ server
  /// 
  const factory ClipsState.loading( ) = Loading;
   /// this state return if any exception between  event and state/server and store 
   /// all exception of all params
  /// and perform example in our ui loading indiator
  /// 
 const factory ClipsState.failureState(Failure failure ) = FailureState;
    /// this state store  if communiation success then show data in our ui
  /// 
  const factory ClipsState.success( QuickClipsModel quickClipsModel ) = Success;
    /// 
    const factory ClipsState.getCommentByIdSuccess( CommentModel commentModel ) = GetCommentByIdSuccess;
  const factory ClipsState.clipLikeDislikeSuccess() = ClipLikeDislikeSuccess;
   /// 
  const factory ClipsState.commmentSuccess() = CommmentSuccess;
}

