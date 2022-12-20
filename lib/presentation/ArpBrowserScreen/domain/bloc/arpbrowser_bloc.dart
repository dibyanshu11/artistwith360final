import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/domain/models/arpQuickModel/arp_browseModel.dart';
import 'package:artist_replugged/domain/models/searchModel/search_model.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/usecases/arp_browserUsecase.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/morelikethis_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/models/morelikeThisModel/morelikethis_model.dart';
import '../../../../domain/models/search_model.dart';
import '../../../arpSelection/domain/usecase/info_usecase.dart';
import '../../../search/domain/search_usecase.dart';
part 'arpbrowser_event.dart';
part 'arpbrowser_state.dart';
part 'arpbrowser_bloc.freezed.dart';
// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Examples can assume:
class ArpbrowserBloc extends Bloc<ArpbrowserEvent, ArpbrowserState> {
  ArpbrowserBloc(this.arpBrowserUseCase, this.morelikeThisUsecase,
      this.addToList, this.search, this.arpViewSearch)
      : super(const ArpbrowserState.initial());
  final ArpBrowserUseCase arpBrowserUseCase;
  final AddToList addToList;
  final MorelikeThisUsecase morelikeThisUsecase;
  final Search search;
  final ArpViewSearch arpViewSearch;
  @override
  Stream<ArpbrowserState> mapEventToState(ArpbrowserEvent event) async* {
    yield* event.map(getDataChanged: (GetData getData) async* {
      yield const Loading();
      await search(unit);
      var failureOrSucess = await arpBrowserUseCase(getData.text);

      if (failureOrSucess.isLeft()) {
        if (Failure is ServerError) {}
      }
      if (failureOrSucess.isRight()) {
        yield Success(failureOrSucess.getOrElse(() => ArpBrowserModel()));
      }
    }, addToListChanged: (AddToListChanged value) async* {
      var failureOrsucess = await addToList(
        AddToListParams(
          documentId: value.documentId.toString(),
          type: value.type.toString(),
        ),
      );

      if (failureOrsucess.isRight()) {
        //  yield const AddToListSuccess();
      }
    }, morelikeThisChaneged: (MorelikeThisChaneged value) async* {
      var failureOrsuccess = await morelikeThisUsecase(value.text);
      if (failureOrsuccess.isRight()) {
        yield MorelikeThisSuccess(
            failureOrsuccess.getOrElse(() => Morelikethismodel()));
      }
    }, getSearch: (GetSearch value) async* {
      var failureOrsuccess = await search(unit);
      if (failureOrsuccess.isRight()) {
        yield SearchState(failureOrsuccess.getOrElse(() => SearchModel()));
      }
    }, getSearchList: (GetSearchList value) async* {
      yield const Loading();
      var failureOrSucess = await arpViewSearch(
          SearchParams(id: value.documentId, text1: value.type, text2: ''));
      if (failureOrSucess.isLeft()) {
        if (Failure is ServerError) {}
      }
      if (failureOrSucess.isRight()) {
        yield GetDataSearch(failureOrSucess.getOrElse(() => ArpSearchModel()));
      }
    });
  }
}
