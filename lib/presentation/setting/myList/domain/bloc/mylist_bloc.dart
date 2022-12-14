import 'package:artist_replugged/presentation/setting/myList/domain/usecases/usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../domain/models/mylistModel/mylist_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'mylist_event.dart';
part 'mylist_state.dart';
part 'mylist_bloc.freezed.dart';

class MylistBloc extends Bloc<MylistEvent, MylistState> {
  MylistBloc(this.myListUsecase) : super(const MylistState.initialState());
  final MyListUsecase myListUsecase;
  @override
  Stream<MylistState> mapEventToState(MylistEvent event) async* {
    yield* event.map(getMyListChanged: ((value) async* {
      var successOrFailure = await myListUsecase(unit);
      if (successOrFailure is Right) {
        yield const LoadingState();
        yield SuccessState(successOrFailure.getOrElse(() => MyListModel()));
      }
    }));
  }
}
