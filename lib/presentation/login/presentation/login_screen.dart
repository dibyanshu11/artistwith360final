import 'package:artist_replugged/core/auth/validators.dart';
import 'package:artist_replugged/core/constant/constant.dart';
import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/widget/textfield.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/presentation/arp_browser_screen.dart';
import 'package:artist_replugged/presentation/forgot/presentation/forgot_password.dart';
import 'package:artist_replugged/presentation/login/presentation/bloc/login_bloc.dart';
import 'package:artist_replugged/presentation/register/presentation/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';

import '../../../core/theme/text_style.dart';
import '../../../core/widget/buttons.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../data/remote/firebase/fcm_token.dart';
import '../../splash/splash_screen_equitment.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    userRepositoryImp.search();
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final GlobalKey<FormState> form = GlobalKey<FormState>();
    getToken();
    if (emailController.text.isEmpty) {
      emailController.text =
          prefHelper.getStringByKey(ArtistConstant.email, '');
    }
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ArtistColor.backGroundColor,
      body: BlocProvider(
        create: (context) => KiwiContainer().resolve<LoginBloc>(),
        child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          return BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    state.authFailureOrSuccessOption.fold(
                      () {},
                      (either) => either.fold(
                        (Failure failure) {
                          failure.map(serverError: (_) {
                            showDialoges(
                                context, ArtistConstant.serverException);
                          }, timeout: (_) {
                            showDialoges(
                                context, ArtistConstant.timeOutException);
                          }, connectionFailure: (_) {
                            showDialoges(
                                context, ArtistConstant.internetExeption);
                          }, emailAlreayInUsed: (_) async {
                            prefHelper.saveString(
                                ArtistConstant.email, emailController.text);
                            showCrediantialDialogs(
                                context,
                                ArtistConstant.invalidEmail,
                                ArtistConstant.incorrectEmail,
                                () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute<RegisterScreen>(
                                          builder: (_) => RegisterScreen()));
                                },
                                ArtistConstant.createAccount,
                                () {
                                  Navigator.pop(context);
                                });
                          }, invalidEmailAndPasswordCombination: (_) {
                            prefHelper.saveString(
                                ArtistConstant.email, emailController.text);
                            showCrediantialDialogs(
                                context,
                                ArtistConstant.incorrectPasword,
                                ArtistConstant.incorrectPasswordError,
                                () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute<ForgotScreen>(
                                          builder: (_) =>
                                              const ForgotScreen()));
                                },
                                ArtistConstant.forgetPassword,
                                () {
                                  Navigator.pop(context);
                                });
                          });
                        },
                        (_) {
                          // Navigator.of(context).push(
                          //     MaterialPageRoute<AppBrowserScreen>(
                          //         builder: (_) => AppBrowserScreen()));
                        },
                      ),
                    );
                  },
                  (_) {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (_) => const AppBrowserScreen()),
                        ((route) => false));
                  },
                ),
              );
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Form(
                      key: form,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 40, right: 20),
                            child: Image.asset(
                              'assets/icons/yellowlogo.png',
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Login',
                                style: ArtistTextStyle.headerTextStyle),
                          ),
                          ArtistTextFormField(
                            text: 'email'.capitalizeFirstLetter,
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(RegExp(r' ')),
                            ],
                            validator: (value) {
                              if (EmailAddress(emailController.value.text)
                                  .value
                                  .isLeft()) {
                                return ArtistConstant.emailValidator;
                              }

                              return null;
                            },
                            onChanged: (text) {
                              print(emailController.value.text);
                              context.read<LoginBloc>().add(
                                  EmailChanged(emailController.value.text));
                            },
                            controller: emailController,
                          ),
                          ArtistTextFormField(
                            text: 'password'.capitalizeFirstLetter,
                            obsecureText: true,
                            controller: passwordController,
                            validator: (value) {
                              if (Password(passwordController.text)
                                  .value
                                  .isLeft()) {
                                return ArtistConstant.passwordValidation;
                              }
                              return null;
                            },
                            onChanged: (text) {
                              context.read<LoginBloc>().add(
                                  PasswordChanged(passwordController.text));
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (_) => const ForgotScreen()));
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                  'Forgot Password?'.capitalizeFirstLetter,
                                  style: ArtistTextStyle.smallHeadingTextStyle),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ArtistThemeButton(
                              text: state.isSubmitting
                                  ? 'Loading..'
                                  : 'Login Here'.toUpperCase(),
                              onPressed: () {
                                prefHelper.saveString(ArtistConstant.password,
                                    passwordController.text);
                                if (form.currentState!.validate()) {
                                  context.read<LoginBloc>().add(
                                      EmailChanged(emailController.value.text));
                                  context
                                      .read<LoginBloc>()
                                      .add(const RegisterButtonTapped());
                                }
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                          state.isSubmitting
                              ? indiator(Colors.grey)
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'don\'t have an account? '
                                          .capitalizeFirstLetter,
                                      style:
                                          ArtistTextStyle.smallHeadingTextStyle,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  fullscreenDialog: true,
                                                  builder: (_) =>
                                                      RegisterScreen()));
                                        },
                                        child: Text(
                                            'sign up'.capitalizeFirstLetter,
                                            style: ArtistTextStyle
                                                .tearmAndCandition)),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

extension StringShortCuts on String {
  String get capitalizeFirstLetter {
    final firstLetter = this[0];
    final capitalizeFirstLetter = firstLetter.toUpperCase();
    final capitlizedName = replaceAll(firstLetter, capitalizeFirstLetter);
    return capitlizedName;
  }
}
