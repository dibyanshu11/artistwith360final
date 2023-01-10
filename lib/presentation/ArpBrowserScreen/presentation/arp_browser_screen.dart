import 'dart:developer';

import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:artist_replugged/domain/models/arpQuickModel/arp_browseModel.dart';
import 'package:artist_replugged/domain/models/selectedDocumentaryModel/selected_documentary_model.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:artist_replugged/main.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import 'package:artist_replugged/presentation/search/presentation/search_filter.dart';
import 'package:artist_replugged/presentation/search/presentation/search_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/constant/constant.dart';
import '../../../core/failure/failure.dart';
import '../../../data/local/shared_pref.dart';
import '../../arpQuickClipsScreen/presentation/arp_quick_clips_screen.dart';
import '../../arpSelection/presentation/arp_movie_selection_screen.dart';
import '../../search/presentation/search_screen2.dart';
import '../../video/arp_video_play.dart';

///
var pageCountValueDocumentary = 1;
var pageCountValueClips = 1;
var pageCountValueSearch = 1;
var pageCountValueList = 1;
var valueLisnable = 0;
var route0 = 0;
// var items = [
//   'All',
//   'trailer',
//   'documentary',
//   'performance',
//   'behind-the-scenes',
//   'bloopers',
//   'jewels-by-julia',
//   '360-performance',
// ];
var searchItemss;

@immutable
class AppBrowserScreen extends StatefulWidget {
  const AppBrowserScreen({Key? key}) : super(key: key);

  @override
  State<AppBrowserScreen> createState() => _AppBrowserScreenState();
}

class _AppBrowserScreenState extends State<AppBrowserScreen> {
  final CarouselController _controller = CarouselController();

  ArpViewModel arpViewModel = ArpViewModel();
  UserRepository repository = KiwiContainer().resolve<UserRepository>();

  var status = 0;
  var indexes = 0;
  var current = 0;
  var currentIndex = 0;
  var list = [];
  ScrollController controller = ScrollController();

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
            pageCountValueDocumentary++;
          });
          repository.arpBrowser(
            text,
          );
        });
      }
    });

    if (storeUri != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (storeUri!.endsWith('mp4')) {
          await Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ArpQuickClipsScreen()));
        }
        if (storeUri.isNotEmpty) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => ArpMovieSelectionScreen()));
        }
      });
    }

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  //(MediaQuery.of(context).size.width/4)*3;
  ////final controller = useScrollController();

  final SharedPrefHelper prefHelper =
      KiwiContainer().resolve<SharedPrefHelper>();

  @override
  Widget build(BuildContext context) {
    var topHeight = MediaQuery.of(context).size.width + 50;

    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return BlocProvider(
        create: (context) => KiwiContainer().resolve<ArpbrowserBloc>(),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: ArtistColor.headerColor,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              automaticallyImplyLeading: false,
              actions: [
                if (MediaQuery.of(context).orientation == Orientation.portrait)
                  Container(
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
                                  itemCount: searchItemss == null
                                      ? 0
                                      : searchItemss.length,
                                  shrinkWrap: true,
                                  itemBuilder: ((context, index) {
                                    return Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: InkWell(
                                            onTap: () {
                                              // log('djdkldjkl${items[0]}');
                                              indexes = index;
                                              //log(items[index]);
                                              setState(() {});
                                              context
                                                  .read<ArpbrowserBloc>()
                                                  .add(GetData(
                                                      searchItemss[index]));
                                            },
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  addLists =
                                                      searchItemss[index];
                                                  if (searchItemss[index] !=
                                                      'All') {
                                                    setState(() {
                                                      text =
                                                          searchItemss[index];
                                                    });
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (_) =>
                                                                SearchList(
                                                                  text:
                                                                      searchItemss[
                                                                          index],
                                                                )));
                                                  }
                                                  ;
                                                });
                                              },
                                              child: Text(
                                                  searchItemss[index]
                                                      .toString()
                                                      .replaceAll('-', ' '),
                                                  // .toCapitalized()
                                                  // .toTitleCase(),
                                                  style: searchItemss[index] ==
                                                          'All'
                                                      ? ArtistTextStyle
                                                          .enableButtonStyle
                                                      : ArtistTextStyle
                                                          .searchTextStyle),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  })),
                            ),
                          ),
                        ]),
                  ),
              ]),
          bottomNavigationBar: buttonbar(
            currentIndex,
            context,
          ),
          body: BlocListener<ArpbrowserBloc, ArpbrowserState>(
            listener: (context, state) {
              //  if (state is Failure) {
              (Failure failure) {
                failure.map(
                    serverError: (_) {
                      showDialoges(context, ArtistConstant.serverException);
                    },
                    connectionFailure: (_) {
                      showDialoges(context, ArtistConstant.internetExeption);
                    },
                    timeout: (_) {
                      showDialoges(context, ArtistConstant.timeOutException);
                    },
                    emailAlreayInUsed: (_) {},
                    invalidEmailAndPasswordCombination: (_) {});

                (_) {};
                (_) {};
              };
              // }
            },
            child: BlocBuilder<ArpbrowserBloc, ArpbrowserState>(
                builder: (context, state) {
              if (state is Initials) {
                text = '';
                types = 'trailer';
                BlocProvider.of<ArpbrowserBloc>(context).add(const GetSearch());

                BlocProvider.of<ArpbrowserBloc>(context).add(const GetData(''));
                return indiator(Colors.white);
              }

              if (State is Loading) {
                return indiator(Colors.white);
              }

              if (state is Success) {
                route0 = 1;

                if (prefHelper.getStringByKey('documentaryStatus', '') ==
                    'Documentary removed from list.') {
                  status = 1;
                }
                // ignore: unnecessary_new
                return SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: true,
                              autoPlayAnimationDuration:
                                  const Duration(seconds: 1),
                              enlargeCenterPage: true,
                              //  aspectRatio: 2.0,
                              height: topHeight,
                              viewportFraction: 1.8,
                              onPageChanged: (index, reason) {
                                current = index;
                                setState(() {});
                              }),
                          items: state.arpBrowserModel.data!.top!.map((item) {
                            return InkWell(
                              onTap: () {
                                prefHelper.saveString(
                                    'descriptions',
                                    state.arpBrowserModel.data!
                                        .listing![current].trailer!.description
                                        .toString());
                                prefHelper.saveString(
                                    'idforgetData',
                                    state.arpBrowserModel.data!
                                        .listing![current].id
                                        .toString());
                                prefHelper.saveString(
                                    'genre',
                                    state.arpBrowserModel.data!
                                        .listing![current].genre
                                        .toString());

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      fullscreenDialog: true,
                                      builder: (_) =>
                                          ArpMovieSelectionScreen()),
                                );
                              },
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  item.types!.length.toInt() > 0
                                      ? Center(
                                          child: SizedBox(
                                            height: topHeight,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: CachedNetworkImage(
                                              imageUrl: item
                                                  .types![0].s3ImageUrl
                                                  .toString(),
                                              height: 180,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              fit: BoxFit.cover,
                                              progressIndicatorBuilder:
                                                  (context, url,
                                                          downloadProgress) =>
                                                      const Center(
                                                child:
                                                    CupertinoActivityIndicator(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  Container(
                                      height: topHeight,
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          ArtistColor.headerColor,
                                          Colors.transparent,
                                        ],
                                      ))),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      item.types!.length.toInt() > 0
                                          ? Text(
                                              'WATCH NOW',
                                              style: ArtistTextStyle
                                                  .watchNowTextStyle,
                                              // textScaleFactor: 2,
                                            )
                                          : Container(),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      item.types!.length.toInt() > 0
                                          ? CachedNetworkImage(
                                              imageUrl:
                                                  item.s3LogoUrl.toString(),
                                              height: 80,
                                              width: 250,
                                              fit: BoxFit.contain,
                                            )
                                          : Container(),
                                      const SizedBox(
                                        height: 80,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: topHeight,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 40),
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: state.arpBrowserModel.data!.top!
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _controller.animateToPage(entry.key),
                                    child: Container(
                                      width: 12.0,
                                      height: 12.0,
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 4.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: (Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : Colors.white)
                                              .withOpacity(current == entry.key
                                                  ? 0.9
                                                  : 0.4)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: topHeight,
                          child: state.arpBrowserModel.data!.top!.length
                                      .toInt() >
                                  0
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationZ(32),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0),
                                          child: InkWell(
                                            onTap: () {
                                              if (state
                                                      .arpBrowserModel
                                                      .data!
                                                      .top![current]
                                                      .types!
                                                      .length
                                                      .toInt() >
                                                  0) {
                                                if (state
                                                    .arpBrowserModel
                                                    .data!
                                                    .top![current]
                                                    .types![0]
                                                    .s3VideoUrl
                                                    .toString()
                                                    .endsWith('.mp4')) {
                                                  setState(() {
                                                    exitFull.value = 0;
                                                  });
                                                  prefHelper.saveString(
                                                      'videoImage',
                                                      state
                                                          .arpBrowserModel
                                                          .data!
                                                          .top![current]
                                                          .types![0]
                                                          .s3ImageUrl
                                                          .toString());
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        fullscreenDialog: true,
                                                        builder: (_) =>
                                                            MyHomePage(
                                                              count: 0,
                                                              watchId: state
                                                                  .arpBrowserModel
                                                                  .data!
                                                                  .top![current]
                                                                  .id
                                                                  .toString(),
                                                              type: state
                                                                  .arpBrowserModel
                                                                  .data!
                                                                  .top![current]
                                                                  .types![0]
                                                                  .type
                                                                  .toString(),
                                                              videoUrl: state
                                                                  .arpBrowserModel
                                                                  .data!
                                                                  .top![current]
                                                                  .types![0]
                                                                  .s3VideoUrl
                                                                  .toString(),
                                                              videoTime: '',
                                                            )),
                                                  );
                                                  //  }
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                          const SnackBar(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              content: Text(
                                                                'VideoError: Failed to load video',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              )));
                                                }
                                              }
                                            },
                                            child: Card(
                                                shadowColor: Colors.white,
                                                elevation: 0.1,
                                                shape: const CircleBorder(),
                                                color: Colors.transparent,
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  radius: 30,
                                                  child: Image.asset(
                                                      'assets/icons/playButtons.png'),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ),
                      ]),
                      state.arpBrowserModel.data!.top!.length.toInt() > 0
                          ? Padding(
                              padding: const EdgeInsets.only(left: 30, top: 20),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(5),
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: ArtistColor.backGroundColor,
                                ),
                                child: Text(
                                  'Trending Now'.toUpperCase(),
                                  style: const TextStyle(
                                      fontFamily: 'Fjalla One',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF0100ff)),
                                ),
                              ),
                            )
                          : Container(),
                      SizedBox.fromSize(
                        size: const Size(0, 20),
                      ),
                      MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: state.arpBrowserModel.data!.listing!.length
                                    .toInt() >
                                0
                            ? Column(
                                children: [
                                  ListView.builder(
                                      //  controller: controller,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: names!.length,
                                      itemBuilder: (context, index) {
                                        log(names![index]
                                            .s3ImageUrl
                                            .toString());
                                        return names![index].trailer != null
                                            ? Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10,
                                                            left: 15,
                                                            right: 15),
                                                    child: InkWell(
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await prefHelper
                                                            .saveString(
                                                                'descriptions',
                                                                names![index]
                                                                    .trailer!
                                                                    .description
                                                                    .toString());
                                                        await prefHelper
                                                            .saveString(
                                                                'idforgetData',
                                                                names![index]
                                                                    .id
                                                                    .toString());
                                                        await prefHelper
                                                            .saveString(
                                                                'genre',
                                                                names![index]
                                                                    .genre
                                                                    .toString());
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                fullscreenDialog:
                                                                    true,
                                                                builder: (_) =>
                                                                    (const ArpMovieSelectionScreen())));
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              names![index]
                                                                  .trailer!
                                                                  .s3ImageUrl
                                                                  .toString(),
                                                          height: 180,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          fit: BoxFit.cover,
                                                          progressIndicatorBuilder:
                                                              (context, url,
                                                                      downloadProgress) =>
                                                                  const CupertinoActivityIndicator(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 30,
                                                        vertical: 10),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            height: 35,
                                                            child:
                                                                Image.network(
                                                              names![index]
                                                                  .s3LogoUrl
                                                                  .toString(),
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        Material(
                                                          color: Colors
                                                              .transparent, // button color
                                                          child: InkWell(
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            splashColor: Colors
                                                                .transparent, // splash color
                                                            onTap: () async {
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
                                                              await prefHelper
                                                                  .saveString(
                                                                      'genre',
                                                                      names![index]
                                                                          .genre
                                                                          .toString());
                                                              Navigator.of(
                                                                      context)
                                                                  .push(MaterialPageRoute(
                                                                      builder:
                                                                          (_) =>
                                                                              (const ArpMovieSelectionScreen())));
                                                            }, // button pressed
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                Image.asset(
                                                                  'assets/images/information.png',
                                                                  height: 25,
                                                                  width: 25,
                                                                ),
                                                                const SizedBox(
                                                                  height: 10,
                                                                ),
                                                                Text(
                                                                  'Info',
                                                                  style: ArtistTextStyle
                                                                      .smallWhiteTextStyle,
                                                                ), // text
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        Container(
                                                          child: InkWell(
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () {
                                                              if (names![index]
                                                                      .listed ==
                                                                  0) {
                                                                setState(() {
                                                                  names![index]
                                                                          .listed =
                                                                      names![index]
                                                                              .listed! +
                                                                          1;
                                                                  names![index]
                                                                      .listed = 1;
                                                                });
                                                                BlocProvider.of<
                                                                            ArpbrowserBloc>(
                                                                        context)
                                                                    .add(AddToListChanged(
                                                                        'add',
                                                                        names![index]
                                                                            .id
                                                                            .toString()));
                                                              } else {
                                                                setState(() {
                                                                  names![index]
                                                                          .listed =
                                                                      names![index]
                                                                              .listed! -
                                                                          1;
                                                                  names![index]
                                                                      .listed = 0;
                                                                });
                                                                BlocProvider.of<
                                                                            ArpbrowserBloc>(
                                                                        context)
                                                                    .add(AddToListChanged(
                                                                        'remove',
                                                                        names![index]
                                                                            .id
                                                                            .toString()));
                                                              }
                                                            },

                                                            // ignore: unnecessary_type_check

                                                            child: Material(
                                                              color: ArtistColor
                                                                  .headerColor, // button color
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Icon(
                                                                    names![index].listed ==
                                                                            0
                                                                        ? Icons
                                                                            .add_circle_outline_outlined
                                                                        : Icons
                                                                            .remove_circle_outline_outlined,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 30,
                                                                  ),
                                                                  const SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Text(
                                                                    names![index].listed ==
                                                                            0
                                                                        ? 'Add to List'
                                                                        : 'Remove to List',
                                                                    style: ArtistTextStyle
                                                                        .smallWhiteTextStyle,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 35,
                                                        vertical: 0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          names![index]
                                                              .title
                                                              .toString(),
                                                          //.toTitleCase(),
                                                          style: ArtistTextStyle
                                                              .enableButtonStyle,
                                                          textScaleFactor: 0.8,
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        names![index]
                                                                    .trailer!
                                                                    .description
                                                                    .toString() !=
                                                                'null'
                                                            ? Text(
                                                                names![index]
                                                                            .trailer!
                                                                            .description
                                                                            .toString()
                                                                            .length >
                                                                        90
                                                                    ? '${(names![index].trailer!.description)!.substring(0, 90)}...'
                                                                    : names![
                                                                            index]
                                                                        .trailer!
                                                                        .description
                                                                        .toString(),
                                                                style: ArtistTextStyle
                                                                    .smallHeadingTextStyle,
                                                              )
                                                            : Container(),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '${names![index].city.toString()}, ${names![index].state.toString()} - ${names![index].genre.toString()}',
                                                              style: ArtistTextStyle
                                                                  .smallHeadingTextStyle,
                                                            ),
                                                            Text(
                                                              ' | ${names![index].views!.toInt()} Views',
                                                              style: ArtistTextStyle
                                                                  .smallHeadingTextStyle,
                                                            )
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 20,
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            : Container();
                                      }),
                                  state.arpBrowserModel.data!.lastPage! >
                                          pageCountValueDocumentary
                                      ? indiator(Colors.white)
                                      : Text(
                                          'No More Data',
                                          style:
                                              ArtistTextStyle.enableButtonStyle,
                                        )
                                ],
                              )
                            : Center(
                                child: Text(
                                  'Data not found',
                                  style: ArtistTextStyle.enableButtonStyle,
                                ),
                              ),
                      ),
                    ],
                  ),
                );
              } else {
                return indiator(Colors.white);
              }
            }),
          ),
        ));
  }
}
