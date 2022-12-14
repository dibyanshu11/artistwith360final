// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:artist_replugged/presentation/video/player_controls.dart';
import 'package:http/http.dart' as http;
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

import '../../data/remote/firebase/fcm_token.dart';

var exitFull = ValueNotifier(0);

class MyHomePage extends StatefulWidget {
  final String videoUrl;
  final count;
  final String watchId;
  final String type;
  const MyHomePage(
      {Key? key,
      required this.videoUrl,
      required this.count,
      required this.watchId,
      required this.type,
      required String videoTime})
      : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    log(widget.videoUrl);
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(widget.videoUrl);

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
    _controller.play();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  var playPause = 0;
  var aspectReatio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // Use a FutureBuilder to display a loading spinner while waiting for the
        // VideoPlayerController to finish initializing.
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
                  "time": _controller.value.position.inMinutes.toString()
                });

            return true;
          },
          child: Center(
            child: ValueListenableBuilder(
                valueListenable: exitFull,
                builder: (context, value, child) {
                  return Stack(
                    fit: exitFull.value == 0 ? StackFit.expand : StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      FutureBuilder(
                        future: _initializeVideoPlayerFuture,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            // If the VideoPlayerController has finished initialization, use
                            // the data it provides to limit the aspect ratio of the video.
                            //
                            return InkWell(
                                onDoubleTap: () {
                                  if (aspectReatio == 0) {
                                    setState(() {
                                      aspectReatio = 1;
                                    });
                                  } else {
                                    setState(() {
                                      aspectReatio = 0;
                                    });
                                  }
                                },
                                onTap: () {
                                  if (playPause == 0) {
                                    setState(() {
                                      playPause = 1;
                                    });

                                    Future.delayed(Duration(seconds: 5), () {
                                      setState(() {
                                        playPause = 0;
                                      });
                                    });
                                  } else {
                                    setState(() {
                                      playPause = 0;
                                    });
                                  }
                                },
                                child: ValueListenableBuilder(
                                    valueListenable: exitFull,
                                    builder: (context, value, child) {
                                      return exitFull.value == 0
                                          ? SizedBox.expand(
                                              child: FittedBox(
                                                fit: BoxFit.cover,
                                                child: SizedBox(
                                                  width: _controller
                                                      .value.size.width,
                                                  height: _controller
                                                      .value.size.height,
                                                  child:
                                                      VideoPlayer(_controller),
                                                ),
                                              ),
                                            )
                                          : AspectRatio(
                                              aspectRatio:
                                                  _controller.value.aspectRatio,
                                              child: VideoPlayer(_controller));
                                    }));
                          } else {
                            // If the VideoPlayerController is still initializing, show a
                            // loading spinner.
                            return Center(child: indiator(Colors.white));
                          }
                        },
                      ),
                      // if (_controller.value.isBuffering) indiator(Colors.white),
                      ValueListenableBuilder(
                        valueListenable: _controller,
                        builder: (context, VideoPlayerValue value, child) {
                          //Do Something with the value.
                          return _controller.value.isBuffering
                              ? indiator(Colors.white)
                              : Container();
                        },
                      ),
                      if (playPause == 1)
                        VideoPlayerControls(
                          videoPlayerController: _controller,
                          type: widget.type,
                          watchId: widget.watchId,
                        )
                    ],
                  );
                }),
          ),
        ));
  }
}

class QuikClipsPlayer extends StatefulWidget {
  final String videoUrl;
  const QuikClipsPlayer({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<QuikClipsPlayer> createState() => _QuikClipsPlayerState();
}

class _QuikClipsPlayerState extends State<QuikClipsPlayer> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) {
        setState(() {});
        videoPlayerController.play();
        videoPlayerController.setLooping(true);
      })
      ..addListener(() {
        print(videoPlayerController.value.position);
        print(videoPlayerController.value.duration);
        if (videoPlayerController.value.hasError) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: ArtistColor.buttomBarColor,
              content: Text(
                'Something went wrong',
                style: ArtistTextStyle.enableButtonStyle,
              )));
          Navigator.pop(context);
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.videoUrl);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          InkWell(
            onTap: () {
              if (videoPlayerController.value.isPlaying) {
                videoPlayerController.pause();
              } else {
                videoPlayerController.play();
              }
            },
            child: Container(
                alignment: Alignment.center,
                child: videoPlayerController.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: videoPlayerController.value.aspectRatio,
                        child: SizedBox.expand(
                            child: FittedBox(
                                fit: BoxFit.cover,
                                child: SizedBox(
                                  width: videoPlayerController.value.size.width,
                                  height:
                                      videoPlayerController.value.size.height,
                                  child: VideoPlayer(videoPlayerController),
                                ))))
                    : indiator(Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 10,
              width: 650,
              child: VideoProgressIndicator(videoPlayerController,
                  colors: const VideoProgressColors(
                      bufferedColor: ArtistColor.backGroundColor,
                      backgroundColor: Colors.grey,
                      playedColor: Color(0XFF6ac7f9)),
                  allowScrubbing: true),
            ),
          ),
        ],
      ),
    );
  }
}
