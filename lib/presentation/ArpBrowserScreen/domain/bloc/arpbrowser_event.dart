part of 'arpbrowser_bloc.dart';

@freezed
class ArpbrowserEvent with _$ArpbrowserEvent {
  ///* this event will fired when getDataChanged
  ///*

  const factory ArpbrowserEvent.getDataChanged(String text) = GetData;
    const factory ArpbrowserEvent.getSearch() = GetSearch;
  ///* this event will fired when getDataChanged
  ///*
  const factory ArpbrowserEvent.morelikeThisChaneged(dynamic ids,String text) = MorelikeThisChaneged;
  const factory ArpbrowserEvent.addToListChanged(String type,String documentId) = AddToListChanged;
   const factory ArpbrowserEvent.getSearchList(String type,String documentId) = GetSearchList;
}
