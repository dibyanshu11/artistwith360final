import 'package:artist_replugged/core/constant/constant.dart';
import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/core/widget/buttons.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:artist_replugged/core/widget/textfield.dart';
import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/presentation/arp_browser_screen.dart';
import 'package:artist_replugged/presentation/login/presentation/login_screen.dart';
import 'package:artist_replugged/presentation/register/presentation/register/register_bloc.dart';
import 'package:artist_replugged/presentation/webview/Term_and_conditions.dart';
import 'package:artist_replugged/presentation/webview/privay_policy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';

import '../../../data/remote/firebase/fcm_token.dart';
import '../../splash/splash_screen_equitment.dart';

// ignore: must_be_immutable
class RegisterScreen extends HookWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final SharedPrefHelper _prefHelper =
      KiwiContainer().resolve<SharedPrefHelper>();
  @override
  Widget build(BuildContext context) {
    userRepositoryImp.search();
    getToken();
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    final GlobalKey<FormState> forms = GlobalKey<FormState>();

    final confirmPasswordController = useTextEditingController(text: '');

    if (emailController.text.isEmpty) {
      emailController.text =
          _prefHelper.getStringByKey(ArtistConstant.email, '');
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ArtistColor.backGroundColor,
      body: BlocProvider(
        create: (context) => KiwiContainer().resolve<RegisterBloc>(),
        child: BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            context
                .read<RegisterBloc>()
                .add(EmailChanged(emailController.text));
            return BlocConsumer<RegisterBloc, RegisterState>(
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
                                connectionFailure: (_) {
                                  showDialoges(
                                      context, ArtistConstant.internetExeption);
                                },
                                timeout: (_) {
                                  showDialoges(
                                      context, ArtistConstant.timeOutException);
                                },
                                emailAlreayInUsed: (_) {
                                  _prefHelper.saveString(ArtistConstant.email,
                                      emailController.text);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                                },
                                invalidEmailAndPasswordCombination: (_) {});
                          },
                          (_) {
                            _prefHelper.removeByKey(
                              ArtistConstant.email,
                            );
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (_) => AppBrowserScreen()),
                                ((route) => false));
                          },
                        ),
                      );
                    },
                    (_) {
                      _prefHelper.saveString(
                          ArtistConstant.email, emailController.text);
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => AppBrowserScreen()),
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
                          key: forms,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 40, right: 20),
                                    child: Image.asset(
                                      'assets/icons/yellowlogo.png',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Sign Up',
                                        style: ArtistTextStyle.headerTextStyle),
                                  ),
                                  ArtistTextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    text: 'Email',
                                    inputFormatters: [
                                      FilteringTextInputFormatter.deny(
                                          RegExp(r' ')),
                                    ],
                                    validator: (value) {
                                      if (state.emailAddress.value.isLeft()) {
                                        return 'Please enter valid email';
                                      }
                                      return null;
                                    },
                                    onChanged: (text) {
                                      context.read<RegisterBloc>().add(
                                          EmailChanged(emailController.text));
                                    },
                                    controller: emailController,
                                  ),
                                  ArtistTextFormField(
                                    validator: (value) {
                                      if (state.password.value.isLeft()) {
                                        return ArtistConstant
                                            .passwordValidation;
                                      }
                                      return null;
                                    },
                                    onChanged: (text) {
                                      prefHelper.saveString(
                                          ArtistConstant.password,
                                          passwordController.text);
                                      context.read<RegisterBloc>().add(
                                          PasswordChanged(
                                              passwordController.text));
                                    },
                                    obsecureText: true,
                                    text: 'Password'.capitalizeFirstLetter,
                                    controller: passwordController,
                                  ),
                                  ArtistTextFormField(
                                    obsecureText: true,
                                    validator: (value) {
                                      if (passwordController.text.toString() !=
                                          confirmPasswordController.text
                                              .toString()) {
                                        return ArtistConstant.passwordMatched;
                                      }
                                      return null;
                                    },
                                    onChanged: (text) {
                                      context.read<RegisterBloc>().add(
                                          ConfirmPasswordChanged(
                                              confirmPasswordController.text));
                                    },
                                    text: 'Confirm Password',
                                    controller: confirmPasswordController,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      children: [
                                        Text(
                                            'By clicking "SIGN UP" you agree to the',
                                            style: ArtistTextStyle
                                                .smallHeadingTextStyle),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        const TermAndConditions()));
                                          },
                                          child: Text(
                                            'Artist Replugged Term',
                                            style: ArtistTextStyle
                                                .tearmAndCandition,
                                          ),
                                        ),
                                        Text(' of use and',
                                            style: ArtistTextStyle
                                                .smallHeadingTextStyle),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        const PrivacyPolicyScreens()));
                                          },
                                          child: Text(
                                            ' Privacy Policy',
                                            style: ArtistTextStyle
                                                .tearmAndCandition,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  ArtistThemeButton(
                                      text: state.isSubmitting
                                          ? 'Loading..'
                                          : 'Sign up'.toUpperCase(),
                                      onPressed: () {
                                        if (forms.currentState!.validate()) {
                                          context.read<RegisterBloc>().add(
                                              EmailChanged(
                                                  emailController.value.text));
                                          context.read<RegisterBloc>().add(
                                              const RegisterButtonTapped());
                                        }
                                      }),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  state.isSubmitting
                                      ? indiator(Colors.grey)
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Have an account already? ',
                                              style: ArtistTextStyle
                                                  .smallHeadingTextStyle,
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          fullscreenDialog:
                                                              true,
                                                          builder: (_) =>
                                                              const LoginScreen()));
                                                },
                                                child: Text('Login',
                                                    style: ArtistTextStyle
                                                        .tearmAndCandition)),
                                          ],
                                        )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
              },
            );
          },
        ),
      ),
    );
  }
}
