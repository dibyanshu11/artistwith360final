import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/forgot/domain/bloc/forgot_bloc.dart';
import 'package:artist_replugged/presentation/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/constant/constant.dart';
import '../../../core/failure/failure.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/text_style.dart';
import '../../../core/widget/buttons.dart';
import '../../../core/widget/dialog_boxes.dart';
import '../../../core/widget/textfield.dart';

class SetNewPasswordScreen extends HookWidget {
  const SetNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = useTextEditingController();
    TextEditingController password = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();
    SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();

    return Scaffold(
      backgroundColor: ArtistColor.backGroundColor,
      body: BlocProvider(
        create: (context) => KiwiContainer().resolve<ForgotBloc>(),
        child: BlocListener<ForgotBloc, ForgotState>(
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
                          showDialoges(context, ArtistConstant.serverException);
                        }, timeout: (_) {
                          showDialoges(
                              context, ArtistConstant.timeOutException);
                        }, connectionFailure: (_) {
                          showDialoges(
                              context, ArtistConstant.internetExeption);
                        }, emailAlreayInUsed: (_) {
                          showDialoges(context, 'something went wrong');
                        }, invalidEmailAndPasswordCombination: (_) {
                          showDialoges(context, 'something went wrong');
                        });
                      },
                      (_) {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (_) => const LoginScreen()),
                            ((route) => false));
                      },
                    ),
                  );
                },
                (_) {
                  prefHelper.removeByKey(ArtistConstant.email);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                      ((route) => false));
                },
              ),
            );
          },
          child: BlocBuilder<ForgotBloc, ForgotState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Form(
                  key: form,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 120, left: 20, right: 20),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 40, right: 40, bottom: 20),
                        child: Image.asset(
                          'assets/icons/yellowlogo.png',
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Please enter your registered email to receive a OTP for password reset.',
                        style: ArtistTextStyle.smallHeadingTextStyle,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ArtistTextFormField(
                        validator: (value) {
                          if (prefHelper.getIntByKey('otp', 0) !=
                              int.parse(controller.text.toString())) {
                            return 'Invalid Otp';
                          }
                          return null;
                        },
                        onChanged: (text) {
                          BlocProvider.of<ForgotBloc>(context)
                              .add(OtpChanged(controller.text));
                        },
                        text: 'Otp',
                        controller: controller,
                      ),
                      ArtistTextFormField(
                        obsecureText: true,
                        validator: (value) {
                          if (state.password.value.isLeft()) {
                            return ArtistConstant.passwordValidation;
                          }
                          return null;
                        },
                        onChanged: (text) {
                          BlocProvider.of<ForgotBloc>(context)
                              .add(NewPasswordChanged(password.text));
                        },
                        text: 'Password',
                        controller: password,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ArtistThemeButton(
                        text: state.isSubmitting ? 'Loading..' : 'Set Password',
                        onPressed: () {
                          if (form.currentState!.validate()) {
                            context
                                .read<ForgotBloc>()
                                .add(const PasswordButtonTapped());
                          }
                        },
                      ),
                      if (state.isSubmitting) ...[indiator(Colors.grey)],
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have account? ',
                            style: ArtistTextStyle.smallHeadingTextStyle,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const LoginScreen()));
                              },
                              child: Text('Login',
                                  style: ArtistTextStyle.tearmAndCandition)),
                        ],
                      )
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
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
