part of 'clips_bloc.dart';
@freezed
class ClipsEvent with _$ClipsEvent {
 
  /// this event will fired when getDataChanged 
  ///

  const factory ClipsEvent.getDataChanged() = GetData;
    /// this event will fired when clipsLikeChangged 
  ///

  const factory ClipsEvent.clipsLikeChangged(int id,String text) =ClipsLikeChangged;
      /// this event will fired when commentChangged 
  ///

   const factory ClipsEvent.commentChangged(int id,String comment) =CommentChangged;
    const factory ClipsEvent.getCommentById(int id) =GetCommentById;
}

