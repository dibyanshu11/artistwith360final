import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import 'package:artist_replugged/presentation/search/presentation/search_screen.dart';
import 'package:artist_replugged/presentation/setting/myList/domain/bloc/mylist_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../data/local/shared_pref.dart';
import '../../arpSelection/presentation/arp_movie_selection_screen.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({Key? key}) : super(key: key);

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  var count = 0;
  int loading = 0;
  @override
  Widget build(BuildContext context) {
    final SharedPrefHelper prefHelper =
        KiwiContainer().resolve<SharedPrefHelper>();

    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => KiwiContainer().resolve<MylistBloc>(),
          ),
          BlocProvider(
            create: (context) => KiwiContainer().resolve<ArpbrowserBloc>(),
          ),
        ],
        child: BlocBuilder<MylistBloc, MylistState>(builder: (context, state) {
          if (state is InitialsState) {
            BlocProvider.of<MylistBloc>(context).add(const GetMyListChanged());
          }

          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: InkWell(
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationZ(4.7),
                          child: Image.asset(
                            'assets/icons/back-button.png',
                            height: 30,
                          )),
                    ),
                  ),
                ),
              ),
              backgroundColor: ArtistColor.headerColor,
              body: state is SuccessState
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: ListView(
                        primary: true,
                        children: [
                          state.myListModel.data!.data!.length.toInt() != 0
                              ? GridView.builder(
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          mainAxisExtent: 280,
                                          crossAxisSpacing: 30,
                                          mainAxisSpacing: 0),
                                  itemCount:
                                      state.myListModel.data!.data!.length,
                                  padding: const EdgeInsets.only(
                                    top: 25,
                                  ),
                                  itemBuilder: (BuildContext context, index) {
                                    var store =
                                        state.myListModel.data!.data![index];
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await prefHelper.saveString(
                                                  'descriptions',
                                                  state
                                                      .myListModel
                                                      .data!
                                                      .data![index]
                                                      .trailer!
                                                      .description
                                                      .toString());
                                              await prefHelper.saveString(
                                                  'genre',
                                                  state.myListModel.data!
                                                      .data![index].genre
                                                      .toString());
                                              await prefHelper.saveString(
                                                  'idforgetData',
                                                  state.myListModel.data!
                                                      .data![index].id
                                                      .toString());

                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          const ArpMovieSelectionScreen()));
                                            },
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 12, right: 12),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        imageUrl: (store
                                                            .trailer!.s3ImageUrl
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
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    BlocProvider.of<
                                                                ArpbrowserBloc>(
                                                            context)
                                                        .add(AddToListChanged(
                                                            'remove',
                                                            state
                                                                .myListModel
                                                                .data!
                                                                .data![index]
                                                                .id
                                                                .toString()));
                                                    setState(() {
                                                      loading = 1;
                                                      state.myListModel.data!
                                                          .data!
                                                          .removeAt(index);
                                                    });
                                                  },
                                                  child: Container(
                                                    child: Image.asset(
                                                      'assets/icons/icons8-macos-close-32.png',
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),

                                          Container(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              store.title.toString().length > 20
                                                  ? store.title
                                                          .toString()
                                                          .substring(0, 20) +
                                                      '..'.toTitleCase()
                                                  : store.title
                                                      .toString()
                                                      .toTitleCase(),
                                              style: ArtistTextStyle
                                                  .enableButtonStyle,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              '${store.city.toString()}, ${store.state.toString()} - ${store.genre.toString()}',
                                              style: ArtistTextStyle
                                                  .smallHeadingTextStyle,
                                            ),
                                          )
                                          // Column(
                                          //   children: [
                                          //     InkWell(
                                          //       focusColor: Colors.transparent,
                                          //       hoverColor: Colors.transparent,
                                          //       highlightColor:
                                          //           Colors.transparent,
                                          //       onTap: () async {},
                                          //       child: Container(
                                          //         height: 50,
                                          //         width: 50,
                                          //         child: const Icon(
                                          //           Icons.remove_circle_outline,
                                          //           color: Colors.white,
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     count == 0
                                          //         ? Text(
                                          //             'Remove',
                                          //             style: ArtistTextStyle
                                          //                 .smallWhiteTextStyle,
                                          //           )
                                          //         : indiator(Colors.white)
                                          //   ],
                                          // )
                                        ],
                                      ),
                                    );
                                  })
                              : Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height /
                                          2.5),
                                  child: Text(
                                    'Data not found',
                                    textAlign: TextAlign.center,
                                    style: ArtistTextStyle.enableButtonStyle,
                                  ),
                                ),
                        ],
                      ))
                  : indiator(Colors.white));
        }));
  }
}
