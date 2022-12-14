import 'package:artist_replugged/core/auth/validators.dart';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/core/widget/buttons.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:artist_replugged/core/widget/textfield.dart';
import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/forgot/domain/bloc/forgot_bloc.dart';
import 'package:artist_replugged/presentation/forgot/presentation/set_password.dart';
import 'package:artist_replugged/presentation/login/presentation/login_screen.dart';
import 'package:artist_replugged/presentation/register/presentation/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';

import '../../../core/constant/constant.dart';
import '../../../core/failure/failure.dart';

class ForgotScreen extends HookWidget {
  const ForgotScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();
    SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
    if (controller.text.isEmpty) {
      controller.text = prefHelper.getStringByKey(ArtistConstant.email, '');
    }
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
                        }, connectionFailure: (_) {
                          showDialoges(
                              context, ArtistConstant.internetExeption);
                        }, emailAlreayInUsed: (_) {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (_) => const LoginScreen()));
                        }, timeout: (_) {
                          showDialoges(
                              context, ArtistConstant.timeOutException);
                        }, invalidEmailAndPasswordCombination: (_) {
                          prefHelper.saveString(
                              ArtistConstant.email, controller.text);
                          showCrediantialDialogs(
                              context,
                              ArtistConstant.incorrectEmail,
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
                        });
                      },
                      (_) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const SetNewPasswordScreen()));
                      },
                    ),
                  );
                },
                (_) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const SetNewPasswordScreen()));
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
                          if (EmailAddress(controller.text).value.isLeft()) {
                            return ArtistConstant.emailValidator;
                          }
                          return null;
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r' ')),
                        ],
                        onChanged: (text) {
                          BlocProvider.of<ForgotBloc>(context)
                              .add(EmailChanged(controller.text));
                        },
                        text: 'Email',
                        controller: controller,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ArtistThemeButton(
                        text: state.isSubmitting ? 'Loading..' : 'Submit',
                        onPressed: () {
                          if (form.currentState!.validate()) {
                            context
                                .read<ForgotBloc>()
                                .add(EmailChanged(controller.text));
                            context
                                .read<ForgotBloc>()
                                .add(const VerifyButtonTapped());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      state.isSubmitting
                          ? indiator(Colors.grey)
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have account? ',
                                  style: ArtistTextStyle.smallHeadingTextStyle,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (_) =>
                                                  const LoginScreen()));
                                    },
                                    child: Text('Login',
                                        style:
                                            ArtistTextStyle.tearmAndCandition)),
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
