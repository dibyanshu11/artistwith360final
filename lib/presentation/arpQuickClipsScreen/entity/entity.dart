import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/bloc/clips_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';
import 'package:video_player/video_player.dart';

class ArpQuickClipsState extends Hook<Widget> {
  @override
  // ignore: library_private_types_in_public_api
  _ArpQuickClipsState createState() => _ArpQuickClipsState();
}

class _ArpQuickClipsState extends HookState<Widget, ArpQuickClipsState> {
  bool abo = false;
  bool foryou = true;
  bool play = true;
  var a = 0;
  late VideoPlayerController _controller;
  @override
  void initHook() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((value) {
        _controller.play();

        setState(() {});
      });

    super.initHook();
  }

  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);

  PageController foryouController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => KiwiContainer().resolve<ClipsBloc>(),
        child: BlocListener<ClipsBloc, ClipsState>(
          listener: (context, state) {},
          child: BlocBuilder<ClipsBloc, ClipsState>(
            builder: (context, state) {
              if (state is Initials) {
                BlocProvider.of<ClipsBloc>(context).add(const GetData());
              } else if (state is Success) {
                List.generate(state.quickClipsModel.data!.data!.length,
                    (index) {
                  // url = state.quickClipsModel.data!.data![index].s3_video_url
                  //     .toString();
                });
                // print(url);
              } else {
                return Container();
              }

              return Stack(
                children: <Widget>[
                  // homescreen(),
                  Positioned(
                      top: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: VideoProgressIndicator(
                          _controller,
                          allowScrubbing: false,
                          colors: const VideoProgressColors(
                            backgroundColor: Colors.red,
                            bufferedColor: Colors.grey,
                            playedColor: ArtistColor.backGroundColor,
                          ),
                        ),
                      )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  // homescreen() {
  //   return PageView.builder(
  //       controller: foryouController,
  //       onPageChanged: (index) {
  //         setState(() {
  //           _controller.seekTo(Duration.zero);
  //           _controller.play();
  //         });
  //       },
  //       scrollDirection: Axis.vertical,
  //       itemCount: 2,
  //       itemBuilder: (context, index) {
  //         return Stack(
  //           fit: StackFit.passthrough,
  //           children: <Widget>[
  //             flatButton(
  //                 padding: const EdgeInsets.all(0),
  //                 onPressed: () {
  //                   setState(() {
  //                     if (play) {
  //                       _controller.pause();
  //                       play = !play;
  //                     } else {
  //                       _controller.play();
  //                       play = !play;
  //                     }
  //                   });
  //                 },
  //                 child: SizedBox(
  //                     width: MediaQuery.of(context).size.width,
  //                     height: MediaQuery.of(context).size.height,
  //                     child: VideoPlayer(_controller))),
  //             Padding(
  //               padding: const EdgeInsets.only(bottom: 70),
  //               child: Align(
  //                 alignment: Alignment.bottomLeft,
  //                 child: SizedBox(
  //                   width: MediaQuery.of(context).size.width - 100,
  //                   height: 100,
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: <Widget>[
  //                       Padding(
  //                         padding: const EdgeInsets.only(left: 10, bottom: 10),
  //                         child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Text('Only I Get Sad',
  //                                   style: ArtistTextStyle.enableButtonStyle),
  //                               const SizedBox(
  //                                 height: 10,
  //                               ),
  //                               const Text('David Diaz',
  //                                   style: TextStyle(
  //                                       fontWeight: FontWeight.bold,
  //                                       color: Colors.white)),
  //                             ]),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //                 padding: const EdgeInsets.only(bottom: 65, right: 10),
  //                 child: Align(
  //                   alignment: Alignment.bottomRight,
  //                   child: SizedBox(
  //                     height: 450,
  //                     child: Column(
  //                       mainAxisAlignment: MainAxisAlignment.end,
  //                       children: <Widget>[
  //                         Container(
  //                           padding: const EdgeInsets.only(bottom: 25),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             children: <Widget>[
  //                               Image.asset(
  //                                 'assets/icons/icon_jack@3x.png',
  //                                 height: 40,
  //                               ),
  //                               Text('427.9K',
  //                                   style: ArtistTextStyle.enableButtonStyle)
  //                             ],
  //                           ),
  //                         ),
  //                         Container(
  //                           padding: const EdgeInsets.only(bottom: 25),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             children: <Widget>[
  //                               Image.asset(
  //                                 'assets/icons/icon_chat@3x.png',
  //                                 height: 40,
  //                               ),
  //                               const Text('427.9K',
  //                                   style: TextStyle(color: Colors.white))
  //                             ],
  //                           ),
  //                         ),
  //                         Container(
  //                           padding: const EdgeInsets.only(bottom: 20),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             children: <Widget>[
  //                               Transform(
  //                                 alignment: Alignment.center,
  //                                 transform: Matrix4.rotationY(math.pi),
  //                                 child: Image.asset(
  //                                   'assets/icons/view.png',
  //                                   height: 40,
  //                                 ),
  //                               ),
  //                               const Text('2051',
  //                                   style: TextStyle(color: Colors.white))
  //                             ],
  //                           ),
  //                         ),
  //                         Container(
  //                           padding: const EdgeInsets.only(bottom: 50),
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             children: <Widget>[
  //                               Transform(
  //                                 alignment: Alignment.center,
  //                                 transform: Matrix4.rotationX(math.pi),
  //                                 child: Image.asset(
  //                                   'assets/icons/icon_share@3x.png',
  //                                   height: 40,
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ))
  //           ],
  //         );
  //       });
  // }
}

// class ChewieListItem extends StatefulWidget {
//   // This will contain the URL/asset path which we want to play
//   final VideoPlayerController videoPlayerController;
//   final bool? looping;
//   final dynamic ratio;
//   final bool? progress;
//   final dynamic muting;

//   const ChewieListItem({
//     required this.videoPlayerController,
//     this.looping,
//     this.progress,
//     this.muting,
//     required this.ratio,
//     Key? key,
//   }) : super(key: key);

//   @override
//   _ChewieListItemState createState() => _ChewieListItemState();
// }

// class _ChewieListItemState extends State<ChewieListItem> {
//   late ChewieController _chewieController;

//   @override
//   void initState() {
//     super.initState();

//     // Wrapper on top of the videoPlayerController
//     _chewieController = ChewieController(
//       autoPlay: true,
//       videoPlayerController: widget.videoPlayerController,
//       aspectRatio: 4 / 8,
//       showOptions: false,
//       showControls: false,
//       allowMuting: widget.muting,

//       // Prepare the video to be played and display the first frame
//       autoInitialize: true,
//       looping: true,

//       // Errors can occur for example when trying to play a video
//       // from a non-existent URL

//       errorBuilder: (context, errorMessage) {
//         return Center(
//           child: Text(
//             errorMessage,
//             style: const TextStyle(color: Colors.white),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _chewieController.dispose();
//     widget.videoPlayerController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (() {
//         widget.videoPlayerController.value.isPlaying
//             ? widget.videoPlayerController.pause()
//             : widget.videoPlayerController.play();
//       }),
//       child: Stack(
//         children: [
//           SizedBox(
//               height: MediaQuery.of(context).size.height,
//               width: MediaQuery.of(context).size.width,
//               child: Chewie(
//                 controller: _chewieController, count: 0,
//               )),
//           widget.progress == true
//               ? Positioned(
//                   top: 60,
//                   width: MediaQuery.of(context).size.width,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: VideoProgressIndicator(
//                       widget.videoPlayerController,
//                       allowScrubbing: false,
//                       colors: const VideoProgressColors(
//                         backgroundColor: ArtistColor.backGroundColor,
//                         bufferedColor: Colors.grey,
//                         playedColor: ArtistColor.backGroundColor,
//                       ),
//                     ),
//                   ))
//               : Container(),
//         ],
//       ),
//     );
//   }
// }

class LikeCommentParams {
  final int id;
  final String text;
  LikeCommentParams({
    required this.id,
    required this.text,
  });

  LikeCommentParams copyWith({
    int? id,
    String? text,
  }) {
    return LikeCommentParams(
      id: id ?? this.id,
      text: text ?? this.text,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LikeCommentParams && other.id == id && other.text == text;
  }

  @override
  int get hashCode => id.hashCode ^ text.hashCode;
}

class PlayTrailer extends StatefulWidget {
  final String? url;
  final String? image;

  const PlayTrailer({
    Key? key,
    this.url,
    this.image,
  }) : super(key: key);

  @override
  _PlayTrailerState createState() => _PlayTrailerState();
}

class _PlayTrailerState extends State<PlayTrailer> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.network(widget.url.toString())
      ..initialize().then((value) {
        setState(() {});

        videoPlayerController.setVolume(0.0);
      });
    videoPlayerController.setLooping(false);
    videoPlayerController.initialize();
    videoPlayerController.play();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          widget.image.toString(),
          height: (MediaQuery.of(context).size.width / 4) * 3,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        // SizedBox(
        //     width: MediaQuery.of(context).size.width,
        //     height: (MediaQuery.of(context).size.width/4)*3,
        //     child: VideoPlayer(
        //       videoPlayerController,
        //     ))
      ],
    );
  }
}
