import 'package:assistive_touch/assistive_touch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_to_airplay/airplay_route_picker_view.dart';
import 'package:video_360/video_360.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
import '../../core/theme/colors.dart';
import '../../core/theme/text_style.dart';
import '../../data/remote/firebase/fcm_token.dart';

class VideoPlayer360View extends StatefulWidget {
  final String videoUrl;
  final count;
  final String watchId;
  final String type;
  const VideoPlayer360View(
      {Key? key,
      required this.videoUrl,
      required this.count,
      required this.watchId,
      required this.type,
      required String videoTime})
      : super(key: key);

  @override
  State<VideoPlayer360View> createState() => _VideoPlayer360ViewState();
}

class _VideoPlayer360ViewState extends State<VideoPlayer360View> {
  Video360Controller? _controller;
  //late Future<void> _initializeVideoPlayerFuture;
  bool _flag = true;
  var truevalue = 0;
  double durationText = 0;
  var durationTextvalue = ValueNotifier<String>('0:0');
  var durationTextvalueValue = ValueNotifier<String>('0:0');
  double totalText = 0;
  double duration = 0;
  late VideoPlayerController videoPlayerController;
  // @override
  void initState() {
    videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) {
        setState(() {
          videoPlayerController.setVolume(0.0);
        });
        videoPlayerController.play();
        videoPlayerController.setLooping(true);
      });
    // _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    videoPlayerController.dispose();

    super.dispose();
  }

  var textdd = '';
  var playPause = 0;
  var aspectReatio = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          body: WillPopScope(
            onWillPop: () async {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitUp,
              ]);
              http.post(
                  Uri.parse('https://dev.artistreplugged.com/api/watch-time'),
                  headers: {
                    'authorization':
                        'Bearer ${prefHelper.getStringByKey('token', '')}'
                  },
                  body: {
                    "watch_id": widget.watchId,
                    "type": widget.type,
                    "time": durationTextvalue.value
                  });

              return true;
            },
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Center(
                  child: SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.height,
                        child: Video360View(
                          onVideo360ViewCreated: _onVideo360ViewCreated,
                          url: widget.videoUrl,
                          onPlayInfo: (Video360PlayInfo info) {
                            setState(() {
                              durationText = info.duration.toDouble();

                              totalText = info.total.toDouble();
                              changeTimeDuration(info.duration.toDouble());
                              totalchangeTimeDuration(info.total.toDouble());
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                if (playPause == 0)
                  Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () async {
                                  SystemChrome.setPreferredOrientations(
                                      [DeviceOrientation.portraitUp]);
                                  Navigator.pop(context);
                                  var response = await http.post(
                                      Uri.parse(
                                          'https://dev.artistreplugged.com/api/watch-time'),
                                      headers: {
                                        'authorization':
                                            'Bearer ${prefHelper.getStringByKey('token', '')}'
                                      },
                                      body: {
                                        "watch_id": widget.watchId,
                                        "type": widget.type,
                                        "time": durationTextvalue.value
                                      });
                                  print(response.body);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              AirPlayRoutePickerView(
                                tintColor: Colors.white,
                                activeTintColor: Colors.white,
                                backgroundColor: Colors.transparent,
                              ),
                            ]),
                      ),
                    ],
                  ),
                if (playPause == 0)
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Duration currentPosition =
                                      videoPlayerController.value.position;
                                  Duration targetPosition = currentPosition -
                                      const Duration(seconds: 10);
                                  videoPlayerController.seekTo(targetPosition);
                                  _controller?.seekTo(-10000);
                                },
                                icon: Icon(
                                  CupertinoIcons.gobackward_10,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 80,
                            ),
                            InkWell(
                                onTap: () {
                                  if (truevalue == 0) {
                                    videoPlayerController.pause();
                                    _controller?.stop();
                                    setState(() {
                                      truevalue = 1;
                                    });
                                  } else {
                                    videoPlayerController.play();
                                    _controller?.play();
                                    setState(() {
                                      truevalue = 0;
                                    });
                                  }

                                  _flag = _flag;
                                },
                                child: Icon(
                                  truevalue == 0
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: ArtistColor.headerColor,
                                  size: 40,
                                )),
                            SizedBox(
                              width: 80,
                            ),
                            IconButton(
                                onPressed: () {
                                  Duration currentPosition =
                                      videoPlayerController.value.position;
                                  Duration targetPosition = currentPosition +
                                      const Duration(seconds: 10);
                                  videoPlayerController.seekTo(targetPosition);
                                  _controller?.seekTo(10000);
                                },
                                icon: Icon(
                                  CupertinoIcons.goforward_10,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        if (MediaQuery.of(context).orientation ==
                            Orientation.landscape)
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 3.5,
                                left: 55,
                                right: 55),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ValueListenableBuilder(
                                  valueListenable: videoPlayerController,
                                  builder:
                                      (context, VideoPlayerValue value, child) {
                                    var text = '';

                                    String displayHour = (value
                                                    .position.inHours %
                                                60) >
                                            9
                                        ? "${(value.position.inHours % 60)}"
                                        : "0${(value.position.inHours % 60)}";
                                    String displayMin = (value
                                                    .position.inMinutes %
                                                60) >
                                            9
                                        ? "${(value.position.inMinutes % 60)}"
                                        : "0${(value.position.inMinutes % 60)}";
                                    String displaySec = (value
                                                    .position.inSeconds %
                                                60) >
                                            9
                                        ? "${(value.position.inSeconds % 60)}"
                                        : "0${(value.position.inSeconds % 60)}";

                                    if (value.position.inHours > 0) {
                                      text =
                                          '${displayHour}:${displayMin}:${displaySec}';
                                    } else if (value.position.inMinutes > 0) {
                                      text = '${displayMin}:${displaySec}';
                                    } else {
                                      text = '${displayMin}:${displaySec}';
                                    }
                                    return Text(
                                      text,
                                      style: ArtistTextStyle.watchNowTextStyle,
                                    );
                                  },
                                ),
                                //  Text('${changeTimeDuration(durationText)}'),
                                Spacer(),
                                SizedBox(
                                  height: 10,
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: VideoProgressIndicator(
                                      videoPlayerController,
                                      colors: const VideoProgressColors(
                                          bufferedColor:
                                              ArtistColor.backGroundColor,
                                          backgroundColor: Colors.grey,
                                          playedColor: Color(0XFF6ac7f9)),
                                      allowScrubbing: false),
                                ),
                                Spacer(),
                                ValueListenableBuilder(
                                  valueListenable: videoPlayerController,
                                  builder:
                                      (context, VideoPlayerValue value, child) {
                                    var text = '';
                                    if (videoPlayerController
                                            .value.duration.inHours >
                                        0) {
                                      text = text = videoPlayerController
                                          .value.duration
                                          .toString()
                                          .substring(0, 8);
                                    }
                                    if (videoPlayerController
                                            .value.duration.inMinutes
                                            .toInt() >
                                        0) {
                                      text = videoPlayerController
                                          .value.duration
                                          .toString()
                                          .substring(2, 7);
                                    } else {
                                      text = text = videoPlayerController
                                          .value.duration
                                          .toString()
                                          .substring(2, 7);
                                    }
                                    //Do Something with the value.
                                    return Text(
                                      text,
                                      style: ArtistTextStyle.watchNowTextStyle,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
              ],
            ),
            // ],
            //  ),
            //),
          ),
        ),
        AssistiveTouch(
          onTap: () {
            if (playPause == 0) {
              print('objecst');
              // setState(() {
              playPause = 1;
              // });
              // Future.delayed(Duration(seconds: 5), () {
              //   setState(() {
              //     playPause = 0;
              //   });
              // });
            } else {
              setState(() {
                playPause = 0;
              });
            }
          },
        )
      ],
    );
  }

  changeTimeDuration(text) {
    var seconds = (text / 1000).floor();
    var minutes = (seconds / 60).floor();
    var hours = (minutes / 60).floor();
    seconds = seconds % 60;
    minutes = minutes % 60;
    hours = hours % 24;
    setState(() {
      durationTextvalue.value = '${hours}:${minutes}:${seconds}';
    });
    return '${hours}:${minutes}:${seconds}';
  }

  totalchangeTimeDuration(text) {
    var seconds = (text / 1000).floor();
    var minutes = (seconds / 60).floor();
    var hours = (minutes / 60).floor();
    seconds = seconds % 60;
    minutes = minutes % 60;
    hours = hours % 24;
    setState(() {
      durationTextvalueValue.value = '${hours}:${minutes}:${seconds}';
    });
    return '${hours}:${minutes}:${seconds}';
  }

  _onVideo360ViewCreated(Video360Controller? controller) {
    this._controller = controller;
  }
}
