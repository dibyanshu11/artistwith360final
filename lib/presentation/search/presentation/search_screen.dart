import 'dart:developer';

import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/domain/models/arpQuickModel/arp_browseModel.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
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
import '../../ArpBrowserScreen/presentation/arp_browser_screen.dart';

class SearchList extends StatefulWidget {
  final String text;
  const SearchList({Key? key, required this.text}) : super(key: key);

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  ScrollController controller = ScrollController();
  UserRepository repository = KiwiContainer().resolve<UserRepository>();
  @override
  void initState() {
    pageCountValueDocumentary = 1;
    names!.removeRange(0, names!.length);
    controller.addListener(() {
      log('information of the view');
      if (controller.position.maxScrollExtent == controller.offset) {
        ;

        setState(() {
          setState(() {
            pageCountValueSearch++;
          });
          repository.arpBrowser(
            text,
          );
        });
      }

      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.text);

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
                          child: widget.text == 'R&B'
                              ? Text('R&B')
                              : Text(
                                  widget.text.isEmpty
                                      ? 'All'
                                      : widget.text
                                          .replaceAll('-', ' ')
                                          .toTitleCase(),
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
              child: ListView(
                controller: controller,
                children: [
                  state is Success
                      ? Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            state.arpBrowserModel.data!.top!.length.toInt() != 0
                                ? GridView.builder(
                                    shrinkWrap: true,
                                    physics: const ScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 180,
                                            mainAxisExtent: 300,
                                            crossAxisSpacing: 40,
                                            mainAxisSpacing: 0),
                                    itemCount: names!.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return names![index].trailer != null
                                          ? InkWell(
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                types = names![index]
                                                    .trailer!
                                                    .type
                                                    .toString();

                                                await prefHelper.saveString(
                                                    'descriptions',
                                                    names![index]
                                                        .trailer!
                                                        .description
                                                        .toString());
                                                await prefHelper.saveString(
                                                    'idforgetData',
                                                    names![index]
                                                        .id
                                                        .toString());
                                                await prefHelper.saveString(
                                                    'genre',
                                                    names![index]
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
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        imageUrl: (names![index]
                                                            .trailer!
                                                            .s3ImageUrl
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
                                                        imageUrl: (names![index]
                                                            .s3LogoUrl
                                                            .toString()),
                                                        height: 40,
                                                        fit: BoxFit.fill,
                                                        progressIndicatorBuilder:
                                                            (context, url,
                                                                    downloadProgress) =>
                                                                const CupertinoActivityIndicator(),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        '${names![index].city.toString()}, ${names![index].state.toString()} - ${names![index].genre.toString()}',
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
                                        top:
                                            MediaQuery.of(context).size.height /
                                                3),
                                    child: Text(
                                      'Data not found',
                                      style: ArtistTextStyle.enableButtonStyle,
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
