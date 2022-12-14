import 'dart:developer';

import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/presentation/arp_browser_screen.dart';
import 'package:artist_replugged/presentation/arpSelection/presentation/arp_movie_selection_screen.dart';
import 'package:artist_replugged/presentation/search/presentation/search_filter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../data/remote/firebase/fcm_token.dart';

var addLists = '';

// ignore: must_be_immutable
class SearchList2 extends StatefulWidget {
  final count;
  String text;
  SearchList2({Key? key, required this.text, required this.count})
      : super(key: key);

  @override
  State<SearchList2> createState() => _SearchList2State();
}

class _SearchList2State extends State<SearchList2> {
  var indexes = 0;
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitDown,
    //   DeviceOrientation.portraitUp,
    // ]);

    return BlocProvider(
      create: (context) => KiwiContainer().resolve<ArpbrowserBloc>(),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            actions: [
              widget.count == 1
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
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
                          width: MediaQuery.of(context).size.width * 0.88,
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
                                      child: Text(
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            fullscreenDialog: true,
                                            builder: (_) =>
                                                const SearchScreen()));
                                  },
                                  color: ArtistColor.backGroundColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  : Container(
                      alignment: Alignment.center,
                      height: ScreenHeight,
                      width: ScreenWidth,
                      padding: const EdgeInsets.only(top: 0, left: 25),
                      color: Colors.transparent,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    valueLisnable = 1;
                                  });
                                  Navigator.of(context).push(MaterialPageRoute(
                                      fullscreenDialog: true,
                                      builder: (_) => const SearchScreen()));
                                },
                                icon: const Icon(
                                  Icons.search,
                                  size: 40,
                                  color: ArtistColor.searchGreyColor,
                                )),
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: searchItemss.length,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) => Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: InkWell(
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () {
                                                indexes = index;

                                                setState(() {});
                                                context
                                                    .read<ArpbrowserBloc>()
                                                    .add(GetData(
                                                        searchItemss[index]));
                                              },
                                              child: InkWell(
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () {
                                                  setState(() {
                                                    print(searchItemss[index]);
                                                    addLists =
                                                        searchItemss[index];

                                                    if (searchItemss[index] ==
                                                        'All') {
                                                      // Navigator.of(context).push(
                                                      //     MaterialPageRoute(
                                                      //         fullscreenDialog:
                                                      //             true,
                                                      //         builder: (_) =>
                                                      //             AppBrowserScreen()));
                                                    } else {
                                                      BlocProvider.of<
                                                                  ArpbrowserBloc>(
                                                              context)
                                                          .add(GetSearchList(
                                                              searchItemss[
                                                                  index],
                                                              searchItemss[
                                                                  index]));
                                                    }

                                                    widget.text =
                                                        searchItemss[index];
                                                  });
                                                },
                                                child: searchItemss[index] ==
                                                        '360-performance'
                                                    ? Text('360 Performance',
                                                        style: addLists.contains(
                                                                searchItemss[
                                                                    index])
                                                            ? ArtistTextStyle
                                                                .enableButtonStyle
                                                            : ArtistTextStyle
                                                                .searchTextStyle)
                                                    : Text(
                                                        searchItemss[index]
                                                            .toString()
                                                            .replaceAll(
                                                                '-', ' ')
                                                            .toCapitalized(),
                                                        style: addLists.contains(
                                                                searchItemss[
                                                                    index])
                                                            ? ArtistTextStyle
                                                                .enableButtonStyle
                                                            : ArtistTextStyle.searchTextStyle),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            )
                          ]),
                    ),
            ]),
        backgroundColor: ArtistColor.headerColor,
        bottomNavigationBar: buttonbar(
          2,
          context,
        ),
        body: BlocBuilder<ArpbrowserBloc, ArpbrowserState>(
          builder: (context, state) {
            log(
              'documentary${widget.text}',
            );
            if (state is Initials) {
              BlocProvider.of<ArpbrowserBloc>(context)
                  .add(GetSearchList(widget.text, widget.text));
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: RefreshIndicator(
                onRefresh: () async {
                  return BlocProvider.of<ArpbrowserBloc>(context)
                      .add(GetSearchList(widget.text, widget.text));
                },
                child: ListView(
                  children: [
                    state is GetDataSearch
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              state.arpSearchModel.data!.length.toInt() != 0
                                  ? GridView.builder(
                                      shrinkWrap: true,
                                      physics: const ScrollPhysics(),
                                      gridDelegate:
                                          const SliverGridDelegateWithMaxCrossAxisExtent(
                                              maxCrossAxisExtent: 180,
                                              mainAxisExtent: 300,
                                              crossAxisSpacing: 40,
                                              mainAxisSpacing: 0),
                                      itemCount:
                                          state.arpSearchModel.data!.length,
                                      itemBuilder: (BuildContext ctx, index) {
                                        return InkWell(
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              types = state.arpSearchModel
                                                  .data![index].trailer!.type
                                                  .toString();
                                              storeText = widget.text;
                                            });

                                            await prefHelper.saveString(
                                                'descriptions',
                                                state
                                                    .arpSearchModel
                                                    .data![index]
                                                    .trailer!
                                                    .description
                                                    .toString());
                                            await prefHelper.saveString(
                                                'idforgetData',
                                                state
                                                    .arpSearchModel
                                                    .data![index]
                                                    .trailer!
                                                    .documentaryId
                                                    .toString());

                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    fullscreenDialog: true,
                                                    builder: (_) =>
                                                        const ArpMovieSelectionScreen()));
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: CachedNetworkImage(
                                                    imageUrl: (state
                                                        .arpSearchModel
                                                        .data![index]
                                                        .trailer!
                                                        .s3ImageUrl
                                                        .toString()),
                                                    height: 180,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    fit: BoxFit.cover,
                                                    progressIndicatorBuilder: (context,
                                                            url,
                                                            downloadProgress) =>
                                                        const CupertinoActivityIndicator(),
                                                  )),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  CachedNetworkImage(
                                                    imageUrl: (state
                                                        .arpSearchModel
                                                        .data![index]
                                                        .s3LogoUrl
                                                        .toString()),
                                                    height: 40,
                                                    width: 100,
                                                    fit: BoxFit.contain,
                                                    progressIndicatorBuilder: (context,
                                                            url,
                                                            downloadProgress) =>
                                                        const CupertinoActivityIndicator(),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    '${state.arpSearchModel.data![index].city.toString()}, ${state.arpSearchModel.data![index].state.toString()} - ${state.arpSearchModel.data![index].genre.toString()}',
                                                    style: ArtistTextStyle
                                                        .smallHeadingTextStyle,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                        // : const SizedBox.shrink();
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
