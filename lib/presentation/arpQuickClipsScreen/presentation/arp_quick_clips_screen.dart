import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:artist_replugged/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/theme/text_style.dart';
import '../../../data/local/shared_pref.dart';
import '../../../domain/models/quickClipModel/quick_clip_models.dart';
import '../../../domain/user_repository.dart';
import '../../ArpBrowserScreen/presentation/arp_browser_screen.dart';
import '../../video/arp_video_play.dart';
import '../domain/bloc/clips_bloc.dart';
import 'dart:math' as math;
import '../domain/usecases/clip_view_usecase.dart';
import '../entity/entity.dart';

List empty1 = [];

class ArpQuickClipsScreen extends StatefulWidget {
  const ArpQuickClipsScreen({super.key});

  @override
  State<ArpQuickClipsScreen> createState() => _ArpQuickClipsScreenState();
}

class _ArpQuickClipsScreenState extends State<ArpQuickClipsScreen> {
  FocusNode inputNode = FocusNode();

// to open keyboard call this function;
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

  TextEditingController controller = TextEditingController();
  var count = 0;
  PageController _controller = PageController();
  var retainData;
  UserRepository repository = KiwiContainer().resolve<UserRepository>();
  @override
  initState() {
    pageCountValueClips = 1;
    storeQuickClipData.removeRange(0, storeQuickClipData.length);
    if (storeUri != null) {
      setState(() {
        if (storeUri != null) {
          retainData = storeUri
              .toString()
              .split('https://dev.artistreplugged.com/clip-share')
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', '')
              .split('.')
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', '')
              .split('/')
              .toString();
        } else {}
      });
    }
    try {
      _controller = PageController(
          initialPage: storeUri != null ? int.parse(retainData[5]) : 0);
      _controller.addListener(() {
        if (_controller.position.maxScrollExtent == _controller.offset) {
          ;

          setState(() {
            setState(() {
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //     backgroundColor: Colors.transparent,
              //     content: indiator(Colors.white)));
              pageCountValueClips++;
            });
            repository.quick();
          });
        }
      });
    } catch (e) {
      _controller = PageController(initialPage: 0);
    }
    controller = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final SharedPrefHelper prefHelper =
        KiwiContainer().resolve<SharedPrefHelper>();

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: BlocProvider(
                create: (context) => KiwiContainer().resolve<ClipsBloc>(),
                child: BlocListener<ClipsBloc, ClipsState>(
                    listener: (context, state) {},
                    child: BlocBuilder<ClipsBloc, ClipsState>(
                        builder: (context, state) {
                      if (state is Initials) {
                        BlocProvider.of<ClipsBloc>(context)
                            .add(const GetData());
                      }

                      if (state is Success) {
                        return GestureDetector(
                          onVerticalDragEnd: (text) {
                            Navigator.pop(context);
                          },
                          child: (storeQuickClipData.length.toInt() > 0)
                              ? PageView.builder(
                                  controller: _controller,
                                  onPageChanged: (index) {
                                    setState(() {
                                      count = 0;

                                      prefHelper.saveInt(
                                          storeQuickClipData.reversed
                                              .toList()[index]
                                              .id
                                              .toString(),
                                          storeQuickClipData.reversed
                                              .toList()[index]
                                              .likes!
                                              .toInt());
                                    });
                                    if (storeQuickClipData.reversed
                                            .toList()[index]
                                            .liked ==
                                        0) {
                                      KiwiContainer().resolve<QuickView>()(
                                          LikeCommentParams(
                                              id: storeQuickClipData.reversed
                                                  .toList()[index]
                                                  .id!
                                                  .toInt(),
                                              text: 'clip'));
                                    }
                                  },
                                  scrollDirection: Axis.horizontal,
                                  itemCount: storeQuickClipData.length,
                                  itemBuilder: (context, index) {
                                    if (count == 0) {
                                      prefHelper.saveInt(
                                          storeQuickClipData.reversed
                                              .toList()[index]
                                              .id
                                              .toString(),
                                          storeQuickClipData.reversed
                                              .toList()[index]
                                              .likes!
                                              .toInt());
                                    }

                                    return Stack(
                                      fit: StackFit.passthrough,
                                      children: <Widget>[
                                        InkWell(
                                          onTapUp: (text) {
                                            Navigator.pop(context);
                                          },
                                          onTapDown: (text) {
                                            Navigator.pop(context);
                                          },
                                          child: SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            child: QuikClipsPlayer(
                                              videoUrl: storeQuickClipData
                                                  .reversed
                                                  .toList()[index]
                                                  .s3VideoUrl
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 70),
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  100,
                                              height: 100,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10,
                                                            bottom: 10),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              storeQuickClipData
                                                                  .reversed
                                                                  .toList()[
                                                                      index]
                                                                  .title
                                                                  .toString(),
                                                              style: ArtistTextStyle
                                                                  .enableButtonStyle),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          const Text('',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white)),
                                                        ]),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 65, right: 10),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: SizedBox(
                                                height: 450,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          if (storeQuickClipData
                                                                  .reversed
                                                                  .toList()[
                                                                      index]
                                                                  .liked ==
                                                              0) {
                                                            storeQuickClipData
                                                                .reversed
                                                                .toList()[index]
                                                                .likes = storeQuickClipData
                                                                    .reversed
                                                                    .toList()[
                                                                        index]
                                                                    .likes! +
                                                                1;
                                                            storeQuickClipData
                                                                .reversed
                                                                .toList()[index]
                                                                .liked = 1;
                                                            BlocProvider.of<
                                                                        ClipsBloc>(
                                                                    context)
                                                                .add(ClipsLikeChangged(
                                                                    storeQuickClipData
                                                                        .reversed
                                                                        .toList()[
                                                                            index]
                                                                        .id!
                                                                        .toInt(),
                                                                    'add'));
                                                          } else {
                                                            storeQuickClipData
                                                                .reversed
                                                                .toList()[index]
                                                                .likes = storeQuickClipData
                                                                    .reversed
                                                                    .toList()[
                                                                        index]
                                                                    .likes! -
                                                                1;
                                                            storeQuickClipData
                                                                .reversed
                                                                .toList()[index]
                                                                .liked = 0;
                                                            BlocProvider.of<
                                                                        ClipsBloc>(
                                                                    context)
                                                                .add(ClipsLikeChangged(
                                                                    storeQuickClipData
                                                                        .reversed
                                                                        .toList()[
                                                                            index]
                                                                        .id!
                                                                        .toInt(),
                                                                    'remove'));
                                                          }
                                                        });
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 25),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Image.asset(
                                                              'assets/icons/icon_jack@3x.png',
                                                              height: 40,
                                                            ),
                                                            Text(
                                                                '${numberFormat(
                                                                  storeQuickClipData
                                                                      .reversed
                                                                      .toList()[
                                                                          index]
                                                                      .likes!
                                                                      .toInt(),
                                                                ).toString().replaceAll('-', '')}',
                                                                style: ArtistTextStyle
                                                                    .enableButtonStyle)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 20),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Transform(
                                                            alignment: Alignment
                                                                .center,
                                                            transform: Matrix4
                                                                .rotationY(
                                                                    math.pi),
                                                            child: Image.asset(
                                                              'assets/icons/view.png',
                                                              height: 40,
                                                            ),
                                                          ),
                                                          Text(
                                                              '${numberFormat(storeQuickClipData.reversed.toList()[index].views!.toInt())}',
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .white))
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () async {
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                ((context) {
                                                              return indiator(
                                                                  Colors.white);
                                                            }));
                                                        // final url = Uri.parse(
                                                        //     state
                                                        //         .quickClipsModel
                                                        //         .data!
                                                        //         .data!
                                                        //         .reversed
                                                        //         .toList()[index]
                                                        //         .s3ImageUrl
                                                        //         .toString());
                                                        // final response =
                                                        //     await http.get(url);
                                                        // final bytes =
                                                        //     response.bodyBytes;
                                                        // final temp =
                                                        //     await getTemporaryDirectory();
                                                        // final path =
                                                        //     '${temp.path}/image.jpg';
                                                        // File(path).writeAsBytes(
                                                        //     bytes);
                                                        Navigator.pop(context);
                                                        Share.share(
                                                            // [path],
                                                            //   text:

                                                            '  https://dev.artistreplugged.com/clip-share/$index.mp4');
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 50),
                                                        child: Transform(
                                                          alignment:
                                                              Alignment.center,
                                                          transform:
                                                              Matrix4.rotationX(
                                                                  math.pi),
                                                          child: Image.asset(
                                                            'assets/icons/icon_share@3x.png',
                                                            height: 40,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ))
                                      ],
                                    );
                                  })
                              : Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'No clip found',
                                    style: ArtistTextStyle.enableButtonStyle,
                                  )),
                        );
                      } else {
                        return indiator(Colors.white);
                      }
                    })))));
  }
}

String numberFormat(int n) {
  String num = n.toString();
  int len = num.length;

  if (n >= 1000 && n < 1000000) {
    return num.substring(0, len - 3) +
        '.' +
        num.substring(len - 3, 1 + (len - 3)) +
        'k';
  } else if (n >= 1000000 && n < 1000000000) {
    return num.substring(0, len - 6) +
        '.' +
        num.substring(len - 6, 1 + (len - 6)) +
        'm';
  } else if (n > 1000000000) {
    return num.substring(0, len - 9) +
        '.' +
        num.substring(len - 9, 1 + (len - 9)) +
        'b';
  } else {
    return num.toString();
  }
}
