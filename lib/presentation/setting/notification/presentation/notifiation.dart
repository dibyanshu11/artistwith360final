import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/setting/notification/domain/bloc/notification_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';
import '../../../../core/constant/constant.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_style.dart';
import '../../../../core/widget/buttons.dart';
import '../../../../core/widget/dialog_boxes.dart';

class NotificationScreen extends HookWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
    var status = useState(false);
    var status1 = useState(false);
    var sendValue1 = useState(0);
    var sendValue2 = useState(0);
    return BlocProvider(
      create: (context) => KiwiContainer().resolve<NotificationBloc>(),
      child: BlocListener<NotificationBloc, NotificationState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                state.authFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold(
                    (Failure failure) {
                      failure.map(
                          serverError: (_) {
                            showDialoges(context,
                                'Sorry unable to complete notification process please try again later ');
                          },
                          timeout: (_) {
                            showDialoges(
                                context, ArtistConstant.timeOutException);
                          },
                          connectionFailure: (_) {
                            showDialoges(
                                context, ArtistConstant.internetExeption);
                          },
                          emailAlreayInUsed: (_) async {},
                          invalidEmailAndPasswordCombination: (_) {});
                    },
                    (_) {},
                  ),
                );
              },
              (_) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Notifications updated sucessfully')));
                Future.delayed(const Duration(seconds: 1), () async {
                  Navigator.pop(context);
                });
              },
            ),
          );
        },
        child: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (prefHelper
                    .getStringByKey(ArtistConstant.quickClips, '')
                    .toString() ==
                '1') {
              status1.value = true;
            }
            if (prefHelper
                    .getStringByKey(ArtistConstant.newEpisodes, '')
                    .toString() ==
                '1') {
              status.value = true;
            }
            return Scaffold(
                backgroundColor: ArtistColor.backGroundColor,
                body: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: ListView(children: [
                      IconButton(
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: ArtistColor.backArrow,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Notifications',
                          style: ArtistTextStyle.headerTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'New Documentary',
                              style: TextStyle(
                                color: ArtistColor.hintTextColor,
                              ),
                              textScaleFactor: 1.3,
                            ),
                            Transform.scale(
                              // scaleY: 1.0,
                              // scaleX: 1.6,

                              scale: 1.2,
                              filterQuality: FilterQuality.high,
                              child: CupertinoSwitch(
                                activeColor: ArtistColor.headerColor,
                                value: status.value,
                                onChanged: (value) async {
                                  status.value = value;
                                  if (value == true) {
                                    prefHelper.saveString(
                                        ArtistConstant.newEpisodes, '1');
                                    sendValue1.value = 1;
                                  } else {
                                    prefHelper.saveString(
                                        ArtistConstant.newEpisodes, '0');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Quick Clips',
                              style: TextStyle(
                                color: ArtistColor.hintTextColor,
                              ),
                              textScaleFactor: 1.3,
                            ),
                            Transform.scale(
                              // scaleY: 1.2,
                              // scaleX: 1.6,
                              scale: 1.2,
                              child: CupertinoSwitch(
                                activeColor: ArtistColor.headerColor,
                                value: status1.value,
                                onChanged: (value) {
                                  prefHelper.saveString(
                                      ArtistConstant.quickClips, '0');
                                  status1.value = value;
                                  if (value == true) {
                                    prefHelper.saveString(
                                        ArtistConstant.quickClips, '1');
                                    sendValue2.value = 1;
                                  } else {
                                    prefHelper.saveString(
                                        ArtistConstant.quickClips, '0');
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      ArtistThemeButton(
                        text: 'update'.toUpperCase(),
                        onPressed: () {
                          context.read<NotificationBloc>().add(ClipChanged(
                              prefHelper.getStringByKey(
                                  ArtistConstant.newEpisodes, '')));
                          // ignore: use_build_context_synchronously
                          context.read<NotificationBloc>().add(EpisodeChanged(
                              prefHelper.getStringByKey(
                                  ArtistConstant.quickClips, '')));
                          // ignore: use_build_context_synchronously
                          BlocProvider.of<NotificationBloc>(context)
                              .add(const NotifiationButtonTapped());
                        },
                      ),
                      if (state.isSubmitting) ...[
                        indiator(ArtistColor.buttomBarColor)
                      ]
                    ])));
          },
        ),
      ),
    );
  }
}
