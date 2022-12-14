import 'dart:developer';

import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import 'package:artist_replugged/presentation/arpSelection/presentation/arp_movie_selection_screen.dart';
import 'package:artist_replugged/presentation/search/presentation/search_filter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../data/remote/firebase/fcm_token.dart';

class SearchList extends HookWidget {
  final String text;
  const SearchList({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(text);

    return BlocProvider(
      create: (context) => KiwiContainer().resolve<ArpbrowserBloc>(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const SearchScreen()));
            },
            child: Container(
              padding: const EdgeInsets.all(0),
              alignment: Alignment.center,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                      child: Center(
                          child: text == 'R&B'
                              ? Text('R&B')
                              : Text(
                                  text.isEmpty
                                      ? 'All'
                                      : text.replaceAll('-', ' ').toTitleCase(),
                                  style: ArtistTextStyle.enableButtonStyle,
                                ))),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: IconButton(
                      icon: const Icon(
                        Icons.search,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const SearchScreen()));
                      },
                      color: ArtistColor.backGroundColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: ArtistColor.headerColor,
        bottomNavigationBar: buttonbar(
          2,
          context,
        ),
        body: BlocBuilder<ArpbrowserBloc, ArpbrowserState>(
          builder: (context, state) {
            if (state is Initials) {
              BlocProvider.of<ArpbrowserBloc>(context).add(const GetData(''));
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: RefreshIndicator(
                onRefresh: () async {
                  return BlocProvider.of<ArpbrowserBloc>(context)
                      .add(GetData(text));
                },
                child: ListView(
                  children: [
                    state is Success
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              state.arpBrowserModel.data!.trendingList!.length
                                          .toInt() !=
                                      0
                                  ? GridView.builder(
                                      shrinkWrap: true,
                                      physics: const ScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent: 180,
                                              mainAxisExtent: 300,
                                              crossAxisSpacing: 40,
                                              mainAxisSpacing: 0),
                                      itemCount: state.arpBrowserModel.data!
                                          .trendingList!.length,
                                      itemBuilder: (BuildContext ctx, index) {
                                        if (state.arpBrowserModel.data!
                                                .trendingList![index].trailer !=
                                            null) {}
                                        return state
                                                    .arpBrowserModel
                                                    .data!
                                                    .trendingList![index]
                                                    .trailer !=
                                                null
                                            ? InkWell(
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  types = state
                                                      .arpBrowserModel
                                                      .data!
                                                      .trendingList![index]
                                                      .trailer!
                                                      .type
                                                      .toString();

                                                  await prefHelper.saveString(
                                                      'descriptions',
                                                      state
                                                          .arpBrowserModel
                                                          .data!
                                                          .trendingList![index]
                                                          .trailer!
                                                          .description
                                                          .toString());
                                                  await prefHelper.saveString(
                                                      'idforgetData',
                                                      state
                                                          .arpBrowserModel
                                                          .data!
                                                          .trendingList![index]
                                                          .id
                                                          .toString());
                                                  await prefHelper.saveString(
                                                      'genre',
                                                      state
                                                          .arpBrowserModel
                                                          .data!
                                                          .trendingList![index]
                                                          .genre
                                                          .toString());
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              const ArpMovieSelectionScreen()));
                                                },
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl: (state
                                                              .arpBrowserModel
                                                              .data!
                                                              .trendingList![
                                                                  index]
                                                              .trailer!
                                                              .s3_image_url
                                                              .toString()),
                                                          height: 180,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          fit: BoxFit.cover,
                                                          progressIndicatorBuilder:
                                                              (context, url,
                                                                      downloadProgress) =>
                                                                  const CupertinoActivityIndicator(),
                                                        )),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        CachedNetworkImage(
                                                          imageUrl: (state
                                                              .arpBrowserModel
                                                              .data!
                                                              .trendingList![
                                                                  index]
                                                              .s3_logo_url
                                                              .toString()),
                                                          height: 40,
                                                          width: 100,
                                                          fit: BoxFit.contain,
                                                          progressIndicatorBuilder:
                                                              (context, url,
                                                                      downloadProgress) =>
                                                                  const CupertinoActivityIndicator(),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          '${state.arpBrowserModel.data!.trendingList![index].city.toString()}, ${state.arpBrowserModel.data!.trendingList![index].state.toString()} - ${state.arpBrowserModel.data!.trendingList![index].genre.toString()}',
                                                          style: ArtistTextStyle
                                                              .smallHeadingTextStyle,
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            : const SizedBox.shrink();
                                      })
                                  : Padding(
                                      padding: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3),
                                      child: Text(
                                        'Data not found',
                                        style:
                                            ArtistTextStyle.enableButtonStyle,
                                      ),
                                    )
                            ],
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 3),
                            child: indiator(Colors.white)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
