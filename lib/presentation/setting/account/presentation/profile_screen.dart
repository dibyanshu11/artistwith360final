import 'dart:developer';

import 'package:artist_replugged/core/constant/constant.dart';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/widget/buttons.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:artist_replugged/core/widget/textfield.dart';
import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/setting/account/domain/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';
import '../../../../core/auth/validators.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/theme/text_style.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController email = useTextEditingController();
    TextEditingController name = useTextEditingController();
    TextEditingController phone = useTextEditingController();
    TextEditingController currentPassword = useTextEditingController();
    TextEditingController changePassword = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();
    SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
    return Scaffold(
        backgroundColor: ArtistColor.backGroundColor,
        body: BlocProvider(
          create: (context) => KiwiContainer().resolve<ProfileBloc>(),
          child: BlocListener<ProfileBloc, ProfileState>(
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
                                showDialoges(
                                    context, ArtistConstant.serverException);
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
                              invalidEmailAndPasswordCombination: (_) {
                                showCrediantialDialogs(
                                    context,
                                    'Already Exist',
                                    'This email is already exist try another email',
                                    () {},
                                    '', () {
                                  Navigator.pop(context);
                                });
                              });
                        },
                        (_) {},
                      ),
                    );
                  },
                  (_) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text('Your account details have been saved.')));
                    Future.delayed(const Duration(seconds: 1), () async {
                      Navigator.pop(context);
                    });
                  },
                ),
              );
            },
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (email.text.isEmpty) {
                  email.text =
                      prefHelper.getStringByKey(ArtistConstant.email, '');
                }
                if (phone.text.isEmpty) {
                  phone.text =
                      prefHelper.getStringByKey(ArtistConstant.phone, '');
                }
                if (name.text.isEmpty) {
                  name.text =
                      prefHelper.getStringByKey(ArtistConstant.name, '');
                }
                return Form(
                  key: form,
                  child: Padding(
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
                            'Account',
                            style: ArtistTextStyle.headerTextStyle,
                          ),
                        ),
                        ArtistTextFormField(
                          text: 'Name',
                          validator: (value) {
                            if (name.text.isEmpty) {
                              return 'Name can\'t be empty';
                            } else {
                              return null;
                            }
                          },
                          onChanged: (text) {
                            prefHelper.saveString(
                                ArtistConstant.name, name.text);
                            context
                                .read<ProfileBloc>()
                                .add(NameChanged(name.text));
                          },
                          controller: name,
                        ),
                        ArtistTextFormField(
                          text: 'Email',
                          enable: true,
                          validator: (value) {
                            if (EmailAddress(email.text).value.isLeft()) {
                              return ArtistConstant.emailValidator;
                            } else {
                              return null;
                            }
                          },
                          onChanged: (text) {
                            prefHelper.saveString(
                                ArtistConstant.email, email.text);
                            context
                                .read<ProfileBloc>()
                                .add(EmailChanged(email.text));
                          },
                          controller: email,
                        ),
                        ArtistTextFormField(
                          text: 'Phone',
                          keyboardType: TextInputType.phone,
                          onChanged: (text) {
                            prefHelper.saveString(
                                ArtistConstant.phone, phone.text);
                            context
                                .read<ProfileBloc>()
                                .add(PhoneChanged(phone.text));
                          },
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                          ],
                          validator: (value) {
                            if (phone.text.isEmpty) {
                              return 'Phone can\'t be empty';
                            }
                            if (phone.text.toString().length.toString() !=
                                '10') {
                              return 'Phone must be 10 digits long';
                            } else {
                              return null;
                            }
                          },
                          controller: phone,
                        ),
                        ArtistTextFormField(
                          text: 'Current Password',
                          obsecureText: true,
                          validator: (value) {
                            if (currentPassword.text.isNotEmpty) {
                              print(prefHelper
                                  .getStringByKey(ArtistConstant.password, '')
                                  .toString());
                              if (prefHelper
                                      .getStringByKey(
                                          ArtistConstant.password, '')
                                      .toString() !=
                                  currentPassword.text.toString()) {
                                return 'Invalid password';
                              }
                            } else {
                              return null;
                            }
                            return null;
                          },
                          onChanged: (text) {
                            context
                                .read<ProfileBloc>()
                                .add(PasswordChanged(currentPassword.text));
                          },
                          controller: currentPassword,
                        ),
                        ArtistTextFormField(
                          text: 'Change Password',
                          obsecureText: true,
                          validator: (value) {
                            if (changePassword.text.isNotEmpty) {
                              if (Password(changePassword.text)
                                  .value
                                  .isLeft()) {
                                return ArtistConstant.passwordValidation;
                              }
                            } else {
                              return null;
                            }
                            return null;
                          },
                          onChanged: (text) {
                            log(changePassword.text);
                            context.read<ProfileBloc>().add(
                                ConfirmPasswordChanged(changePassword.text));
                          },
                          controller: changePassword,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ArtistThemeButton(
                          text: 'update'.toUpperCase(),
                          onPressed: () {
                            print(prefHelper
                                .getStringByKey(ArtistConstant.password, '')
                                .toString());

                            if (form.currentState!.validate()) {
                              context
                                  .read<ProfileBloc>()
                                  .add(const profileButtonTap());
                            }
                          },
                        ),
                        if (state.isSubmitting) ...[
                          indiator(ArtistColor.buttomBarColor)
                        ]
                      ])),
                );
              },
            ),
          ),
        ));
  }
}
