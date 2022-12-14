import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/bloc/clips_bloc.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/video_comment_usecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/entity/entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

import '../../../core/theme/colors.dart';

class CommentScreen extends StatefulWidget {
  final String id;
  const CommentScreen({Key? key, required this.id}) : super(key: key);

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            Text(
              'Comments',
              style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => KiwiContainer().resolve<ClipsBloc>(),
        child: BlocBuilder<ClipsBloc, ClipsState>(
          builder: (context, state) {
            if (state is Initials) {
              BlocProvider.of<ClipsBloc>(context)
                  .add(GetCommentById(int.parse(widget.id)));
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: state is GetCommentByIdSuccess
                  ? Stack(
                      children: <Widget>[
                        ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(bottom: 60),
                            physics: const ScrollPhysics(),
                            itemCount:
                                state.commentModel.data!.comments!.length,
                            itemBuilder: ((context, index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        // const CircleAvatar(
                                        //   radius: 30.0,
                                        //   backgroundImage:
                                        //       NetworkImage(''),
                                        //   backgroundColor:
                                        //       Colors.transparent,
                                        // ),
                                        Text(
                                          state.commentModel.data!.title
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        state.commentModel.data!
                                            .comments![index].comment
                                            .toString(),
                                        style: ArtistTextStyle.commentTextStyle,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ))),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 10, top: 10),
                            height: 60,
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        hintText: "Write message...",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        border: InputBorder.none),
                                    controller: controller,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                FloatingActionButton(
                                  onPressed: () async {
                                    var SuccessOrFailure = await KiwiContainer()
                                            .resolve<QuickComment>()(
                                        LikeCommentParams(
                                            id: int.parse(widget.id),
                                            text: controller.text));
                                    if (SuccessOrFailure.isRight()) {
                                      // ignore: use_build_context_synchronously
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  'Comment added sucessfull')));

                                      setState(() {
                                        // state.quickClipsModel.data!.data![index].copyWith(count: state.quickClipsModel.data!.data![index].count!.toInt() + 1);
                                      });
                                      Navigator.pop(context);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                              content: Text(
                                                  'Something went wrong')));
                                    }
                                    controller.clear();
                                  },
                                  backgroundColor: Colors.blue,
                                  elevation: 0,
                                  child: const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : indiator(ArtistColor.buttomBarColor),
            );
          },
        ),
      ),
    );
  }
}
