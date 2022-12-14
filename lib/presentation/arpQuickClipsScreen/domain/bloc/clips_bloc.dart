import 'package:artist_replugged/domain/models/commentModel/commment_model.dart';
import 'package:artist_replugged/domain/models/quickClipModel/quick_clip_models.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/getComments_usecases.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/quick_usecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/video_comment_usecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/video_like_usecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/entity/entity.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failure/failure.dart';
part 'clips_event.dart';
part 'clips_state.dart';
part 'clips_bloc.freezed.dart';

class ClipsBloc extends Bloc<ClipsEvent, ClipsState> {
  final Quick quick;
  final QuickLike quickLike;
  final QuickComment quickComment;
  final GetCommentUseCases getCommentUseCases;
  ClipsBloc(
      this.quick, this.quickComment, this.quickLike, this.getCommentUseCases)
      : super(const ClipsState.initial());
  @override
  Stream<ClipsState> mapEventToState(ClipsEvent event) async* {
    yield* event.map(getDataChanged: (GetData getData) async* {
      yield const Loading();
      var failureOrSucess = await quick(unit);
      if (failureOrSucess.isLeft()) {
        yield const FailureState(Failure.serverError());
      } else {
        yield Success(failureOrSucess.getOrElse(() => QuickClipsModel()));
      }
    }, clipsLikeChangged: (ClipsLikeChangged value) async* {
      await quickLike(LikeCommentParams(id: value.id, text: value.text));
    }, commentChangged: (CommentChangged value) async* {
      await quickComment(LikeCommentParams(id: value.id, text: value.comment));
    }, getCommentById: (GetCommentById value) async* {
      var successOrFailure = await getCommentUseCases(value.id);
      if (successOrFailure.isRight()) {
        yield GetCommentByIdSuccess(
            successOrFailure.getOrElse(() => const CommentModel()));
      } else {
        yield const FailureState(Failure.serverError());
      }
    });
  }
}
