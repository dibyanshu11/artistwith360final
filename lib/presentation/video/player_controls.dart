import 'dart:developer';
import 'dart:io';

import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_to_airplay/flutter_to_airplay.dart';
import 'package:video_player/video_player.dart';
import 'package:avatar_glow/avatar_glow.dart';
import '../../data/remote/firebase/fcm_token.dart';
import 'arp_video_play.dart';
import 'package:http/http.dart' as http;

class VideoPlayerControls extends StatefulWidget {
  const VideoPlayerControls({
    super.key,
    required this.videoPlayerController,
    required this.watchId,
    required this.type,
  });
  final VideoPlayerController videoPlayerController;
  final String watchId;
  final String type;
  @override
  State<VideoPlayerControls> createState() => _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends State<VideoPlayerControls>
    with SingleTickerProviderStateMixin {
  bool _flag = true;

  late Animation<double> _myAnimation;

  late AnimationController _controller;
  @override
  void initState() {
    initPlatformState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    _myAnimation = CurvedAnimation(curve: Curves.linear, parent: _controller);

    super.initState();
  }

  GestureDetector _buildCastButton() {
    return GestureDetector(
      /// update this one change
      onTap: () {
        // if (Platform.isAndroid) {
        //   // mains([], context);
        // }
      },
      child: AnimatedOpacity(
        opacity: 1.0,
        duration: const Duration(milliseconds: 300),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10),
            color: Colors.transparent,
            child: Container(
              height: 25,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Icon(
                Icons.cast,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {} on PlatformException {}

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }
  // an arbitrary value, this can be whatever you need it to be

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        "watch_id": widget.watchId.toString(),
                        "type": widget.type.toString(),
                        "time": widget
                            .videoPlayerController.value.position.inMinutes
                            .toString(),
                      });
                  print(response.body);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              if (Platform.isIOS)
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Platform.isAndroid
                              ? _buildCastButton()
                              : AirPlayRoutePickerView(
                                  tintColor: Colors.white,
                                  activeTintColor: Colors.white,
                                  backgroundColor: Colors.transparent,
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (exitFull.value == 0) {
                        exitFull.value = 1;
                      } else {
                        exitFull.value = 0;
                      }
                    });
                  },
                  icon: Icon(
                    exitFull.value == 0
                        ? CupertinoIcons.fullscreen
                        : CupertinoIcons.fullscreen_exit,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 6),
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
                            widget.videoPlayerController.value.position;
                        Duration targetPosition =
                            currentPosition - const Duration(seconds: 10);
                        widget.videoPlayerController.seekTo(targetPosition);
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
                      if (widget.videoPlayerController.value.isPlaying) {
                        widget.videoPlayerController.pause();
                      } else {
                        widget.videoPlayerController.play();
                      }
                      if (_flag) {
                        _controller.forward();
                      } else {
                        _controller.reverse();
                      }

                      _flag = !_flag;
                    },
                    child: AvatarGlow(
                      glowColor: Color(0XFFffffff),
                      endRadius: 45.0,
                      duration: Duration(milliseconds: 2000),
                      repeat: true,
                      showTwoGlows: true,
                      animate: widget.videoPlayerController.value.isPlaying
                          ? false
                          : true,
                      repeatPauseDuration: Duration(milliseconds: 100),
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: AnimatedIcon(
                          progress: _myAnimation,
                          icon: widget.videoPlayerController.value.isPlaying
                              ? AnimatedIcons.pause_play
                              : AnimatedIcons.play_pause,
                          color: ArtistColor.headerColor,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  IconButton(
                      onPressed: () {
                        Duration currentPosition =
                            widget.videoPlayerController.value.position;
                        Duration targetPosition =
                            currentPosition + const Duration(seconds: 10);
                        widget.videoPlayerController.seekTo(targetPosition);
                      },
                      icon: Icon(
                        CupertinoIcons.goforward_10,
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          ),
        ),
        if (MediaQuery.of(context).orientation == Orientation.landscape)
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 4,
                left: 55,
                right: 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder(
                  valueListenable: widget.videoPlayerController,
                  builder: (context, VideoPlayerValue value, child) {
                    var text = '';

                    String displayHour = (value.position.inHours % 60) > 9
                        ? "${(value.position.inHours % 60)}"
                        : "0${(value.position.inHours % 60)}";
                    String displayMin = (value.position.inMinutes % 60) > 9
                        ? "${(value.position.inMinutes % 60)}"
                        : "0${(value.position.inMinutes % 60)}";
                    String displaySec = (value.position.inSeconds % 60) > 9
                        ? "${(value.position.inSeconds % 60)}"
                        : "0${(value.position.inSeconds % 60)}";

                    if (value.position.inHours > 0) {
                      text = '${displayHour}:${displayMin}:${displaySec}';
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
                SizedBox(
                  height: 10,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: VideoProgressIndicator(widget.videoPlayerController,
                      colors: VideoProgressColors(
                          bufferedColor: ArtistColor.backGroundColor,
                          backgroundColor: Colors.grey,
                          playedColor: Color(0XFF6ac7f9)),
                      allowScrubbing: true),
                ),
                ValueListenableBuilder(
                  valueListenable: widget.videoPlayerController,
                  builder: (context, VideoPlayerValue value, child) {
                    var text = '';
                    if (widget.videoPlayerController.value.duration.inHours >
                        0) {
                      text = text = widget.videoPlayerController.value.duration
                          .toString()
                          .substring(0, 8);
                    }
                    if (widget.videoPlayerController.value.duration.inMinutes
                            .toInt() >
                        0) {
                      log(widget.videoPlayerController.value.duration.inMinutes
                          .toString());
                      text = widget.videoPlayerController.value.duration
                          .toString()
                          .substring(2, 7);
                    } else {
                      text = text = widget.videoPlayerController.value.duration
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
    );
  }
}
