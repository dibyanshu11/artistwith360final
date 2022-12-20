import 'package:artist_replugged/presentation/search/presentation/search_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/text_style.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../data/remote/firebase/fcm_token.dart';
import '../../arpSelection/presentation/arp_movie_selection_screen.dart';

var text = 'All';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _controller = TextEditingController();
  var genre;
  var value = true;
  var type;
  bool _isWriting = false;
  @override
  void initState() {
    _controller = TextEditingController();
    _controller.addListener(() {
      _controller.text.isEmpty ? value = true : value = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => KiwiContainer().resolve<ArpbrowserBloc>(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: TextFormField(
                  style: ArtistTextStyle.enableButtonStyle,
                  textAlign: TextAlign.center,
                  textCapitalization: TextCapitalization.sentences,
                  cursorColor: Colors.white,
                  controller: _controller,
                  onChanged: (text) {},
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 50, bottom: 10, top: 10),
                    hintText: 'Search By Name',
                    focusedErrorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0XFFf5f5f5),
                    )),
                    errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                    hintStyle: ArtistTextStyle.enableButtonStyle,
                    focusColor: ArtistColor.hintTextColor,
                    disabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.transparent,
                    )),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      size: 40,
                    ),
                    onPressed: () {},
                    color: ArtistColor.backGroundColor,
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: ArtistColor.headerColor,
        bottomNavigationBar: SizedBox(
          child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.22,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                        backgroundColor: ArtistColor.backGroundColor,
                        onPressed: () {
                          setState(() {
                            text = 'All';

                            Navigator.of(context).push(MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (_) => SearchList(
                                      text: text,
                                    )));
                          });
                        },
                        child: const Image(
                            image:
                                AssetImage('assets/images/close-button.png'))),
                    buttonbar(
                      2,
                      context,
                    ),
                  ],
                ),
              )),
        ),
        body: BlocProvider(
            create: (context) => KiwiContainer().resolve<ArpbrowserBloc>(),
            child: BlocBuilder<ArpbrowserBloc, ArpbrowserState>(
                builder: (context, state) {
              if (state is Initials) {
                BlocProvider.of<ArpbrowserBloc>(context).add(const GetSearch());
              }
              if (_controller.text.isEmpty) {
                if (state is SearchState) {
                  genre = state.searchModel.data!.genre!.split(',');

                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: ListView(
                        children: [
                          //  if (value == true)
                          ListView.builder(
                              padding: const EdgeInsets.only(top: 40),
                              shrinkWrap: true,
                              itemCount: genre.length,
                              // primary: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (context, index) => InkWell(
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      setState(() {
                                        text =
                                            genre[index].replaceAll('-', ' ');

                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                fullscreenDialog: true,
                                                builder: (_) => SearchList(
                                                    text: genre[index])));
                                      });
                                    },
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 40),
                                        child: _controller.text.isEmpty ||
                                                _controller.text ==
                                                    genre[index]
                                                        .toString()
                                                        .substring(
                                                          0,
                                                          _controller
                                                                  .text.length -
                                                              1,
                                                        )
                                            ? Text(
                                                genre[index].toString(),
                                                style: ArtistTextStyle
                                                    .enableButtonStyle,
                                              )
                                            : Container(
                                                height: 0,
                                              ),
                                      ),
                                    ),
                                  )),
                          // MediaQuery.removePadding(
                          //   context: context,
                          //   removeTop: true,
                          //   child: ListView.builder(
                          //       padding: const EdgeInsets.only(top: 0),
                          //       shrinkWrap: true,
                          //       itemCount: types.length,
                          //       // primary: true,
                          //       physics: const ScrollPhysics(),
                          //       itemBuilder: (context, index) {
                          //         // setState(() {
                          //         var text1 = types[index]
                          //             .toString()
                          //             .substring(0, 1)
                          //             .toUpperCase();
                          //         var text2 = text1 +
                          //             types[index].substring(
                          //                 1, types[index].length.toInt());
                          //         if (text2 == 'Jewels-by-julia') {
                          //           text2 = 'Jewels By Julia';
                          //         } else if (text2 == 'Behind-the-scenes') {
                          //           text2 = 'Behind The Scenes';
                          //         } else {
                          //           text2;
                          //         }
                          //         // });
                          //         return InkWell(
                          //           onTap: () {
                          //             setState(() {
                          //               text =
                          //                   types[index].replaceAll('-', ' ');
                          //               Navigator.of(context)
                          //                   .push(MaterialPageRoute(
                          //                       fullscreenDialog: true,
                          //                       builder: (_) => SearchList(
                          //                             text: types[index],
                          //                           )));
                          //             });
                          //           },
                          //           child: Center(
                          //             child: Padding(
                          //               padding:
                          //                   const EdgeInsets.only(bottom: 40),
                          //               child: InkWell(
                          //                 onTap: () {
                          //                   setState(() {
                          //                     text = types[index]
                          //                         .replaceAll('-', ' ');
                          //                     addLists = types[index];

                          //                     Navigator.of(context).push(
                          //                         MaterialPageRoute(
                          //                             builder: (_) =>
                          //                                 SearchList2(
                          //                                   count: 1,
                          //                                   text: types[index],
                          //                                 )));
                          //                   });
                          //                 },
                          //                 child: Text(
                          //                   text2
                          //                       .toString()
                          //                       .replaceAll('-', ' '),
                          //                   style: ArtistTextStyle
                          //                       .enableButtonStyle,
                          //                 ),
                          //               ),
                          //             ),
                          //           ),
                          //         );
                          //       }),
                          // )
                        ],
                      ));
                } else {
                  return indiator(Colors.white);
                }
              } else {
                return BlocProvider(
                  create: (context) =>
                      KiwiContainer().resolve<ArpbrowserBloc>(),
                  child: BlocBuilder<ArpbrowserBloc, ArpbrowserState>(
                      builder: (context, state) {
                    text = '';

                    _controller.addListener(() {
                      if (_controller.text.length > 2)
                        Future.delayed(Duration(seconds: 2), () {
                          return BlocProvider.of<ArpbrowserBloc>(context).add(
                              GetSearchList(
                                  _controller.text, _controller.text));
                        });
                    });
                    if (State is Loading) {
                      return indiator(Colors.white);
                    }

                    if (state is GetDataSearch) {
                      return SingleChildScrollView(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            state.arpSearchModel.data!.listing!.length
                                        .toInt() !=
                                    0
                                ? GridView.builder(
                                    shrinkWrap: true,
                                    physics: const ScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithMaxCrossAxisExtent(
                                            maxCrossAxisExtent: 180,
                                            mainAxisExtent: 300,
                                            crossAxisSpacing: 40,
                                            mainAxisSpacing: 0),
                                    itemCount: state
                                        .arpSearchModel.data!.listing!.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return InkWell(
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          setState(() {
                                            types = state.arpSearchModel.data!
                                                .listing![index].trailer!.type
                                                .toString();
                                          });
                                          prefHelper.saveString(
                                              'idforgetData',
                                              state
                                                  .arpSearchModel
                                                  .data!
                                                  .listing![index]
                                                  .trailer!
                                                  .documentaryId
                                                  .toString());

                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  fullscreenDialog: true,
                                                  builder: (_) =>
                                                      const ArpMovieSelectionScreen()));
                                          _controller.clear();
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: CachedNetworkImage(
                                                  imageUrl: (state
                                                      .arpSearchModel
                                                      .data!
                                                      .listing![index]
                                                      .trailer!
                                                      .s3ImageUrl
                                                      .toString()),
                                                  height: 180,
                                                  width: MediaQuery.of(context)
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
                                                      .data!
                                                      .listing![index]
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
                                                  '${state.arpSearchModel.data!.listing![index].city.toString()}, ${state.arpSearchModel.data!.listing![index].state.toString()} - ${state.arpSearchModel.data!.listing![index].genre.toString()}',
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
                                        top:
                                            MediaQuery.of(context).size.height /
                                                3),
                                    child: Center(
                                      child: Text(
                                        'Data not found',
                                        style:
                                            ArtistTextStyle.enableButtonStyle,
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ));
                    } else {
                      return indiator(Colors.white);
                    }
                  }),
                );
              }
            })),
      ),
    );
  }
}
