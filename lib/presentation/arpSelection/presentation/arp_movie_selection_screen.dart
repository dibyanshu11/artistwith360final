import 'dart:developer';
import 'dart:io';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/bloc/arp_selection_bloc.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/documentary_likedislike_usecase.dart';
import 'package:artist_replugged/presentation/search/presentation/search_screen2.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/constant/constant.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../data/local/shared_pref.dart';
import '../../../main.dart';
import '../../video/arp_video_play.dart';
import 'package:http/http.dart' as http;

import '../../video/video_360_player.dart';
import '../../webview/privay_policy_screen.dart';

String counts = '1';
var storeText = '';
var types = '';

extension StringExtension on String {
  String firstcapitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

class ArpMovieSelectionScreen extends StatefulWidget {
  const ArpMovieSelectionScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ArpMovieSelectionScreen> createState() =>
      _ArpMovieSelectionScreenState();
}

class _ArpMovieSelectionScreenState extends State<ArpMovieSelectionScreen> {
  final SharedPrefHelper prefHelper =
      KiwiContainer().resolve<SharedPrefHelper>();
  final ScrollController _controller = ScrollController();
  //final double _height = 100.0;

  // void _animateToIndex(int index) {
  //   _controller.animateTo(
  //     _height * index,
  //     duration: Duration(seconds: 1),
  //     curve: Curves.fastOutSlowIn,
  //   );
  // }

  var count = 0;
  var decide = '';
  var hrStr = '';
  var hrStr1 = '';

  @override
  Widget build(BuildContext context) {
    if (decide.isEmpty) {
      decide = prefHelper.getStringByKey('documentaryStatus', '').toString();
    }

    return Scaffold(
      backgroundColor: ArtistColor.headerColor,
      bottomNavigationBar: buttonbar(
        0,
        context,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => KiwiContainer().resolve<ArpSelectionBloc>(),
          ),
          BlocProvider(
              create: (context) => KiwiContainer().resolve<ArpbrowserBloc>())
        ],
        child: BlocBuilder<ArpSelectionBloc, ArpSelectionState>(
          builder: (context, state) {
            Map<String, String> headers = <String, String>{
              'authorization':
                  'Bearer ${prefHelper.getStringByKey('token', '')}',
            };

            http.post(ArtistConstant.clipViewUrl,
                headers: headers,
                body: <String, dynamic>{
                  'id':
                      prefHelper.getStringByKey('idforgetData', '').toString(),
                  'type': 'documentary'
                });

            if (state is Initial) {
              BlocProvider.of<ArpSelectionBloc>(context).add(GetDataChanged(
                  prefHelper
                      .getStringByKey('idforgetData', '')
                      .toString()
                      .split(
                          'https://dev.artistreplugged.com/documentary-share/')
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', '')
                      .replaceAll(',', '')));
              counts = '0';

              WidgetsBinding.instance
                  .addPostFrameCallback((_) => storeUri = '');
            }

            return SingleChildScrollView(
              controller: _controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  state is GetArpsuccess
                      ? Column(children: [
                          MediaQuery.removePadding(
                            removeTop: true,
                            context: context,
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.arpViewModel.data!.types ==
                                        null
                                    ? 0
                                    : state.arpViewModel.data!.types!.length,
                                itemBuilder: ((context, index) {
                                  print(state.arpViewModel.data!.types![index]
                                      .s3ImageUrl);
                                  final first = state.arpViewModel.data!.types!
                                      .indexWhere(
                                          (note) => note.type == storeText);
                                  print(storeText);
                                  print(first);
                                  // if (first > 0) _animateToIndex(first + 3);

                                  if (state.arpViewModel.data!.types![index]
                                          .videoLength
                                          .toString() !=
                                      'null') {
                                    var timeArr = state.arpViewModel.data!
                                        .types![index].videoLength
                                        .toString()
                                        .split(':');
                                    var hr = (int.parse(timeArr[0]) > 0)
                                        ? '${int.parse(timeArr[0])}hr '
                                        : '';
                                    var min = (int.parse(timeArr[1]) > 0)
                                        ? '${int.parse(timeArr[1])}min '
                                        : '';
                                    var sec = (int.parse(timeArr[2]) > 0)
                                        ? '${int.parse(timeArr[2])}sec'
                                        : '';

                                    hrStr = '$hr$min$sec';
                                  }

                                  return state.arpViewModel.data!.types![index]
                                              .type ==
                                          types
                                      ? InkWell(
                                          onTap: () async {
                                            if (state.arpViewModel.data!
                                                .types![index].s3VideoUrl
                                                .toString()
                                                .endsWith('.mp4')) {
                                              print(
                                                  '==========================?');
                                              state.arpViewModel.data!
                                                  .types![index].views = state
                                                      .arpViewModel
                                                      .data!
                                                      .types![index]
                                                      .views!
                                                      .toInt() +
                                                  1;
                                              prefHelper.saveString(
                                                  'videoImage',
                                                  state.arpViewModel.data!
                                                      .types![index].s3ImageUrl
                                                      .toString());
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      fullscreenDialog: true,
                                                      builder: (_) =>
                                                          MyHomePage(
                                                            watchId: state
                                                                .arpViewModel
                                                                .data!
                                                                .id
                                                                .toString(),
                                                            type: state
                                                                .arpViewModel
                                                                .data!
                                                                .types![index]
                                                                .type
                                                                .toString(),
                                                            videoUrl: state
                                                                .arpViewModel
                                                                .data!
                                                                .types![index]
                                                                .s3VideoUrl
                                                                .toString(),
                                                            count: 1,
                                                            videoTime: state
                                                                .arpViewModel
                                                                .data!
                                                                .types![index]
                                                                .videoLength
                                                                .toString(),
                                                          )));
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                      backgroundColor:
                                                          Colors.white,
                                                      content: Text(
                                                        'VideoError: Failed to load video',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      )));
                                            }
                                            Map<String, String> headers =
                                                <String, String>{
                                              'authorization':
                                                  'Bearer ${prefHelper.getStringByKey('token', '')}',
                                            };

                                            final response = await http.post(
                                                ArtistConstant.clipViewUrl,
                                                headers: headers,
                                                body: <String, dynamic>{
                                                  'id': state.arpViewModel.data!
                                                      .types![index].id!
                                                      .toString(),
                                                  'type': 'documentary_type'
                                                });
                                            print(response.body);
                                          },
                                          child: Column(
                                            children: [
                                              Stack(
                                                children: [
                                                  SizedBox(
                                                      height: 400,
                                                      child: CachedNetworkImage(
                                                        imageUrl: (state
                                                            .arpViewModel
                                                            .data!
                                                            .types![index]
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
                                                                const CupertinoActivityIndicator(
                                                          color: Colors.white,
                                                        ),
                                                      )),
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      height: 90,
                                                      width: 50,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20),
                                                          child: Icon(
                                                            Icons.arrow_back,
                                                            size: 35,
                                                            color: Colors.white,
                                                          )),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 170),
                                                    child: Center(
                                                      child: AvatarGlow(
                                                        glowColor:
                                                            Color(0XFFffffff),
                                                        endRadius: 45.0,
                                                        duration: Duration(
                                                            milliseconds: 2000),
                                                        repeat: true,
                                                        showTwoGlows: true,
                                                        animate: true,
                                                        repeatPauseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    100),
                                                        child: Container(
                                                            height: 50,
                                                            width: 50,
                                                            alignment: Alignment
                                                                .center,
                                                            decoration:
                                                                BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Colors
                                                                        .white),
                                                            child: Icon(
                                                              Icons
                                                                  .play_arrow_sharp,
                                                              color: ArtistColor
                                                                  .headerColor,
                                                              size: 30,
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 30,
                                                      vertical: 20),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              '${state.arpViewModel.data!.city.toString()}, ${state.arpViewModel.data!.state.toString()} - ${state.arpViewModel.data!.genre.toString()}',
                                                              style: ArtistTextStyle
                                                                  .smallHeadingTextStyle,
                                                            ),
                                                          ),
                                                          IconButton(
                                                              onPressed: () {
                                                                prefHelper
                                                                    .saveString(
                                                                        counts,
                                                                        'Documentary like');
                                                                decide =
                                                                    'Documentary like';

                                                                KiwiContainer()
                                                                    .resolve<
                                                                        DocumentaryLikeDislike>()(DocumentaryParams(
                                                                    id: prefHelper
                                                                        .getStringByKey(
                                                                            'idforgetData',
                                                                            ''),
                                                                    type:
                                                                        'like'));
                                                                setState(() {});
                                                              },
                                                              icon: prefHelper
                                                                          .getStringByKey(
                                                                              counts,
                                                                              '')
                                                                          .toString() ==
                                                                      'Documentary like'
                                                                  ? const Icon(
                                                                      Icons
                                                                          .thumb_up_alt,
                                                                      color: Colors
                                                                          .white,
                                                                    )
                                                                  : const Icon(
                                                                      Icons
                                                                          .thumb_up_alt_outlined,
                                                                      color: Colors
                                                                          .white,
                                                                    )),
                                                          IconButton(
                                                              onPressed: () {
                                                                prefHelper
                                                                    .saveString(
                                                                        counts,
                                                                        'Documentary dislike');
                                                                decide =
                                                                    'Documentary dislike';
                                                                KiwiContainer()
                                                                    .resolve<
                                                                        DocumentaryLikeDislike>()(DocumentaryParams(
                                                                    id: prefHelper
                                                                        .getStringByKey(
                                                                            'idforgetData',
                                                                            ''),
                                                                    type:
                                                                        'dislike'));
                                                                setState(() {});
                                                              },
                                                              icon: prefHelper
                                                                          .getStringByKey(
                                                                              counts,
                                                                              '')
                                                                          .toString() ==
                                                                      'Documentary dislike'
                                                                  ? const Icon(
                                                                      Icons
                                                                          .thumb_down_alt,
                                                                      color: Colors
                                                                          .white,
                                                                    )
                                                                  : const Icon(
                                                                      Icons
                                                                          .thumb_down_alt_outlined,
                                                                      color: Colors
                                                                          .white,
                                                                    )),
                                                          InkWell(
                                                            onTap: () async {
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      ((context) {
                                                                    return indiator(
                                                                        Colors
                                                                            .white);
                                                                  }));

                                                              Navigator.pop(
                                                                  context);

                                                              Share.share(
                                                                  'https://dev.artistreplugged.com/documentary-share/${state.arpViewModel.data!.id.toString()}');
                                                            },
                                                            child: Image.asset(
                                                              'assets/icons/icon_share@3x.png',
                                                              height: 30,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Image.network(
                                                            state.arpViewModel
                                                                .data!.s3LogoUrl
                                                                .toString(),
                                                            height: 40,
                                                            width: 80,
                                                            fit: BoxFit.contain,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        15),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                Navigator.of(context).push(
                                                                    MaterialPageRoute(
                                                                        fullscreenDialog:
                                                                            true,
                                                                        builder: (_) =>
                                                                            ListentomyMusic(
                                                                              url: state.arpViewModel.data!.musicUrl.toString(),
                                                                            )));
                                                              },
                                                              child: Container(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        8,
                                                                    vertical:
                                                                        8),
                                                                decoration: BoxDecoration(
                                                                    color: ArtistColor
                                                                        .buttomBarColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8)),
                                                                child: Row(
                                                                  children: [
                                                                    const Icon(Icons
                                                                        .headphones),
                                                                    Text(
                                                                      '  Listen to my music'
                                                                          .toUpperCase(),
                                                                      style: const TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 7,
                                                      ),
                                                      Row(
                                                        children: [
                                                          state
                                                                      .arpViewModel
                                                                      .data!
                                                                      .types![
                                                                          index]
                                                                      .videoLength
                                                                      .toString() !=
                                                                  'null'
                                                              ? Text(
                                                                  hrStr,
                                                                  style: ArtistTextStyle
                                                                      .smallHeadingTextStyle,
                                                                )
                                                              : Container(),
                                                          Text(
                                                            ' | ${state.arpViewModel.data!.views!.toInt()} Views',
                                                            style: ArtistTextStyle
                                                                .smallHeadingTextStyle,
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        prefHelper
                                                            .getStringByKey(
                                                                'descriptions',
                                                                ''),
                                                        style: ArtistTextStyle
                                                            .smallHeadingTextStyle,
                                                      ),
                                                      const SizedBox(
                                                        height: 30,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  children: [
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          count =
                                                                              0;
                                                                        });

                                                                        BlocProvider.of<ArpSelectionBloc>(context).add(GetDataChanged(prefHelper.getStringByKey(
                                                                            'idforgetData',
                                                                            '')));
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            40,
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: Text(
                                                                            'Scenes',
                                                                            style: count == 0
                                                                                ? const TextStyle(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 14,
                                                                                    fontWeight: FontWeight.w300,
                                                                                    color: ArtistColor.searchGreyColor,
                                                                                  )
                                                                                : ArtistTextStyle.smallHeadingTextStyle),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 2,
                                                                    ),
                                                                    if (count ==
                                                                        0)
                                                                      Container(
                                                                        color: Colors
                                                                            .white,
                                                                        height:
                                                                            2,
                                                                        width:
                                                                            60,
                                                                      )
                                                                  ],
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              Expanded(
                                                                child: Column(
                                                                  children: [
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        count =
                                                                            1;
                                                                        context.read<ArpbrowserBloc>().add(MorelikeThisChaneged(
                                                                            '',
                                                                            prefHelper.getStringByKey('genre',
                                                                                '')));
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            40,
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: Text(
                                                                            'More like this',
                                                                            style: count == 1
                                                                                ? const TextStyle(
                                                                                    fontFamily: 'Roboto',
                                                                                    fontSize: 14,
                                                                                    fontWeight: FontWeight.w300,
                                                                                    color: ArtistColor.searchGreyColor,
                                                                                  )
                                                                                : ArtistTextStyle.smallHeadingTextStyle),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 2,
                                                                    ),
                                                                    Container(
                                                                      color: count == 1
                                                                          ? Colors
                                                                              .white
                                                                          : Colors
                                                                              .transparent,
                                                                      height: 2,
                                                                      width: 85,
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        )
                                      : Container();
                                })),
                          ),
                          if (count == 0)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child:
                                    state.arpViewModel.data!.types!.length
                                                .toInt() >
                                            1
                                        ? ListView.builder(
                                            itemCount: state.arpViewModel.data!
                                                .types!.length,
                                            controller: _controller,
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              log(state.arpViewModel.data!
                                                  .types![index].s3VideoUrl
                                                  .toString());
                                              // _animateToIndex(4);
                                              if (state.arpViewModel.data!
                                                      .types![index].videoLength
                                                      .toString() !=
                                                  'null') {
                                                var timeArr = state
                                                    .arpViewModel
                                                    .data!
                                                    .types![index]
                                                    .videoLength
                                                    .toString()
                                                    .split(':');
                                                var hr = (int.parse(
                                                            timeArr[0]) >
                                                        0)
                                                    ? '${int.parse(timeArr[0])}hr '
                                                    : '';
                                                var min = (int.parse(
                                                            timeArr[1]) >
                                                        0)
                                                    ? '${int.parse(timeArr[1])}min '
                                                    : '';
                                                var sec = (int.parse(
                                                            timeArr[2]) >
                                                        0)
                                                    ? '${int.parse(timeArr[2])}sec'
                                                    : '';

                                                hrStr1 = '$hr$min$sec';
                                              }
                                              prefHelper.saveString(
                                                  'morelikethis',
                                                  state.arpViewModel.data!.id
                                                      .toString());
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20),
                                                child:
                                                    state
                                                                .arpViewModel
                                                                .data!
                                                                .types![index]
                                                                .type
                                                                .toString() !=
                                                            types
                                                        ? Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  if (state
                                                                          .arpViewModel
                                                                          .data!
                                                                          .types![
                                                                              index]
                                                                          .type
                                                                          .toString()
                                                                          .replaceAll(
                                                                              '-',
                                                                              ' ')
                                                                          .toTitleCase() ==
                                                                      '360 Performance') {
                                                                    if (Platform
                                                                        .isIOS) {
                                                                      state
                                                                          .arpViewModel
                                                                          .data!
                                                                          .types![
                                                                              index]
                                                                          .views = state
                                                                              .arpViewModel
                                                                              .data!
                                                                              .types![index]
                                                                              .views!
                                                                              .toInt() +
                                                                          1;
                                                                      SystemChrome
                                                                          .setPreferredOrientations([
                                                                        DeviceOrientation
                                                                            .landscapeLeft,
                                                                        DeviceOrientation
                                                                            .landscapeRight
                                                                      ]);
                                                                      Navigator.of(context).push(MaterialPageRoute(
                                                                          fullscreenDialog: true,
                                                                          builder: (context) => VideoPlayer360View(
                                                                                watchId: state.arpViewModel.data!.types![index].id.toString(),
                                                                                type: state.arpViewModel.data!.types![index].type.toString(),
                                                                                videoUrl: state.arpViewModel.data!.types![index].s3VideoUrl.toString(),
                                                                                count: 1,
                                                                                videoTime: state.arpViewModel.data!.types![index].videoLength.toString(),
                                                                              )));
                                                                    } else {
                                                                      showDialoges(
                                                                          context,
                                                                          'This 360 view is avaliable only for ios user');
                                                                    }
                                                                  } else {
                                                                    setState(
                                                                        () {
                                                                      exitFull
                                                                          .value = 0;
                                                                    });
                                                                    state
                                                                        .arpViewModel
                                                                        .data!
                                                                        .types![
                                                                            index]
                                                                        .views = state
                                                                            .arpViewModel
                                                                            .data!
                                                                            .types![index]
                                                                            .views!
                                                                            .toInt() +
                                                                        1;
                                                                    prefHelper.saveString(
                                                                        'videoImage',
                                                                        state
                                                                            .arpViewModel
                                                                            .data!
                                                                            .types![index]
                                                                            .s3ImageUrl
                                                                            .toString());
                                                                    Navigator.of(context).push(MaterialPageRoute(
                                                                        fullscreenDialog: true,
                                                                        builder: (_) => MyHomePage(
                                                                              watchId: state.arpViewModel.data!.types![index].id.toString(),
                                                                              type: state.arpViewModel.data!.types![index].type.toString(),
                                                                              videoUrl: state.arpViewModel.data!.types![index].s3VideoUrl.toString(),
                                                                              count: 1,
                                                                              videoTime: state.arpViewModel.data!.types![index].videoLength.toString(),
                                                                            )));
                                                                    //  }
                                                                    Map<String,
                                                                            String>
                                                                        headers =
                                                                        <String,
                                                                            String>{
                                                                      'authorization':
                                                                          'Bearer ${prefHelper.getStringByKey('token', '')}',
                                                                    };

                                                                    http.post(
                                                                        ArtistConstant
                                                                            .clipViewUrl,
                                                                        headers:
                                                                            headers,
                                                                        body: <
                                                                            String,
                                                                            dynamic>{
                                                                          'id': state
                                                                              .arpViewModel
                                                                              .data!
                                                                              .types![index]
                                                                              .id!
                                                                              .toString(),
                                                                          'type':
                                                                              'documentary_type'
                                                                        });
                                                                  }
                                                                },
                                                                child: Stack(
                                                                  children: [
                                                                    ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                8.0),
                                                                        child:
                                                                            CachedNetworkImage(
                                                                          imageUrl: (state
                                                                              .arpViewModel
                                                                              .data!
                                                                              .types![index]
                                                                              .s3ImageUrl
                                                                              .toString()),
                                                                          height:
                                                                              180,
                                                                          width: MediaQuery.of(context)
                                                                              .size
                                                                              .width,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                                                                              const CupertinoActivityIndicator(
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                        )),
                                                                    Positioned
                                                                        .fill(
                                                                      top: 50,
                                                                      bottom:
                                                                          50,
                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        height:
                                                                            20,
                                                                        // color: Colors.red,
                                                                        child:
                                                                            AvatarGlow(
                                                                          glowColor:
                                                                              Color(0XFFffffff),
                                                                          endRadius:
                                                                              45.0,
                                                                          duration:
                                                                              Duration(milliseconds: 2000),
                                                                          repeat:
                                                                              true,
                                                                          showTwoGlows:
                                                                              true,
                                                                          animate:
                                                                              true,
                                                                          repeatPauseDuration:
                                                                              Duration(milliseconds: 100),
                                                                          child: Container(
                                                                              height: 50,
                                                                              width: 50,
                                                                              alignment: Alignment.center,
                                                                              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                                                              child: Icon(
                                                                                Icons.play_arrow_sharp,
                                                                                color: ArtistColor.headerColor,
                                                                                size: 30,
                                                                              )),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              Text(
                                                                state
                                                                    .arpViewModel
                                                                    .data!
                                                                    .types![
                                                                        index]
                                                                    .type
                                                                    .toString()
                                                                    .replaceAll(
                                                                        '-',
                                                                        ' ')
                                                                    .toTitleCase(),
                                                                style: ArtistTextStyle
                                                                    .searchTextStyle,
                                                              ),
                                                              const SizedBox(
                                                                height: 5,
                                                              ),
                                                              Row(children: [
                                                                state
                                                                            .arpViewModel
                                                                            .data!
                                                                            .types![index]
                                                                            .videoLength
                                                                            .toString() !=
                                                                        'null'
                                                                    ? Text(
                                                                        hrStr1,
                                                                        style: ArtistTextStyle
                                                                            .smallHeadingTextStyle,
                                                                      )
                                                                    : Container(),
                                                                Text(
                                                                  ' | ${state.arpViewModel.data!.types![index].views!.toInt()} Views',
                                                                  style: ArtistTextStyle
                                                                      .smallHeadingTextStyle,
                                                                ),
                                                              ]),
                                                              const SizedBox(
                                                                height: 5,
                                                              ),
                                                              Text(
                                                                state
                                                                    .arpViewModel
                                                                    .data!
                                                                    .types![
                                                                        index]
                                                                    .description
                                                                    .toString(),
                                                                style: ArtistTextStyle
                                                                    .smallHeadingTextStyle,
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                            ],
                                                          )
                                                        : Container(),
                                              );
                                            },
                                          )
                                        : Center(
                                            child: Text(
                                            'Data Not Found',
                                            style: ArtistTextStyle
                                                .enableButtonStyle,
                                          )),
                              ),
                            )
                        ])
                      : Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 2),
                          child: indiator(Colors.white)),
                  if (count == 1)
                    BlocBuilder<ArpbrowserBloc, ArpbrowserState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: state is MorelikeThisSuccess
                                  ? MediaQuery.removePadding(
                                      context: context,
                                      removeTop: true,
                                      child: state.morelikethismodel.data!.data!
                                                  .length
                                                  .toInt() >
                                              0
                                          ? GridView.builder(
                                              shrinkWrap: true,
                                              physics: const ScrollPhysics(),
                                              gridDelegate:
                                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                                      maxCrossAxisExtent: 180,
                                                      mainAxisExtent: 340,
                                                      crossAxisSpacing: 20,
                                                      mainAxisSpacing: 10),
                                              itemCount: state.morelikethismodel
                                                  .data!.data!.length,
                                              itemBuilder:
                                                  (BuildContext ctx, index) {
                                                // prefHelper
                                                //     .saveString(
                                                //         'descriptions',
                                                //         state
                                                //             .morelikethismodel
                                                //             .data!
                                                //             .data![index]
                                                //             .trailer!
                                                //             .description
                                                //             .toString())
                                                //     .toString();
                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                      onTap: () async {
                                                        types = 'trailer';
                                                        await prefHelper.saveString(
                                                            'descriptions',
                                                            state
                                                                .morelikethismodel
                                                                .data!
                                                                .data![index]
                                                                .trailer!
                                                                .description
                                                                .toString());
                                                        await prefHelper.saveString(
                                                            'idforgetData',
                                                            state
                                                                .morelikethismodel
                                                                .data!
                                                                .data![index]
                                                                .id
                                                                .toString());
                                                        await prefHelper.saveString(
                                                            'genre',
                                                            state
                                                                .morelikethismodel
                                                                .data!
                                                                .data![index]
                                                                .genre
                                                                .toString());
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                    const ArpMovieSelectionScreen()));
                                                      },
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl: (state
                                                                .morelikethismodel
                                                                .data!
                                                                .data![index]
                                                                .trailer!
                                                                .s3_image_url
                                                                .toString()),
                                                            height: 180,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.cover,
                                                            progressIndicatorBuilder:
                                                                (context, url,
                                                                        downloadProgress) =>
                                                                    const CupertinoActivityIndicator(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                        SizedBox(
                                                          height: 30,
                                                          child: Image.network(
                                                            state
                                                                .morelikethismodel
                                                                .data!
                                                                .data![index]
                                                                .s3_logo_url
                                                                .toString(),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          '${state.morelikethismodel.data!.data![index].city}, ${state.morelikethismodel.data!.data![index].state} - ${state.morelikethismodel.data!.data![index].genre}',
                                                          style: ArtistTextStyle
                                                              .smallHeadingTextStyle,
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              })
                                          : Center(
                                              child: Text(
                                              'Data Not Found',
                                              style: ArtistTextStyle
                                                  .enableButtonStyle,
                                            )))
                                  : indiator(Colors.white),
                            ),
                          ],
                        );
                      },
                    )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
