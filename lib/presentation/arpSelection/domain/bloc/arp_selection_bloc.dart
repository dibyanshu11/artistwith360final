import 'package:artist_replugged/presentation/arpSelection/domain/usecase/morelikethis_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/failure/failure.dart';
import '../../../../domain/models/selectedDocumentaryModel/selected_documentary_model.dart';
import '../usecase/info_usecase.dart';
part 'arp_selection_bloc.freezed.dart';
part 'arp_selection_event.dart';
part 'arp_selection_state.dart';

class ArpSelectionBloc extends Bloc<ArpSelectionEvent, ArpSelectionState> {
  ArpSelectionBloc(this.arpView, this.morelikeThisUsecase)
      : super(const ArpSelectionState.initial());
  final ArpView arpView;
  final MorelikeThisUsecase morelikeThisUsecase;
  @override
  Stream<ArpSelectionState> mapEventToState(ArpSelectionEvent event) async* {
    yield* event.map(getDataChanged: (GetDataChanged getDataChanged) async* {
      var failureOrSuccess = await arpView(getDataChanged.ids);
      if (failureOrSuccess.isRight()) {
        yield GetArpsuccess(failureOrSuccess.getOrElse(() => ArpViewModel()));
      }
    });
  }
}
