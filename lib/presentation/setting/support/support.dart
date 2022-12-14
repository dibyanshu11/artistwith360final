import 'package:artist_replugged/core/auth/validators.dart';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/core/widget/textfield.dart';
import 'package:artist_replugged/presentation/setting/support/domain/bloc/support_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kiwi/kiwi.dart';
import '../../../core/constant/constant.dart';
import '../../../core/failure/failure.dart';
import '../../../core/widget/buttons.dart';
import '../../../core/widget/dialog_boxes.dart';

class SupportScreen extends HookWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Initial Selected Value

    ///* List of items in our dropdown menu
    var items = [
      'Reason',
      'Streaming issues',
      'General',
    ];
    ValueNotifier<String> dropdownvalue = useState('Reason');
    TextEditingController nameController = useTextEditingController();
    TextEditingController emailController = useTextEditingController();

    TextEditingController messageController = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: ArtistColor.backGroundColor,
        body: BlocProvider(
          create: (context) => KiwiContainer().resolve<SupportBloc>(),
          child: BlocListener<SupportBloc, SupportState>(
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
                            showDialoges(
                                context, ArtistConstant.serverException);
                          }, invalidEmailAndPasswordCombination: (_) {
                            showDialoges(
                                context, ArtistConstant.serverException);
                          });
                        },
                        (_) {},
                      ),
                    );
                  },
                  (_) async {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            'Thanks for contacting us, we will get back to you soon.')));
                    Future.delayed(const Duration(seconds: 1), () async {
                      Navigator.pop(context);
                    });
                  },
                ),
              );
            },
            child: BlocBuilder<SupportBloc, SupportState>(
              builder: (context, state) {
                return Center(
                  child: Form(
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
                              'Support',
                              style: ArtistTextStyle.headerTextStyle,
                            ),
                          ),
                          ArtistTextFormField(
                            text: 'Name',
                            validator: (value) {
                              if (NameValidator(nameController.text)
                                  .value
                                  .isLeft()) {
                                return ArtistConstant.nameValidator;
                              } else {
                                return null;
                              }
                            },
                            controller: nameController,
                          ),
                          ArtistTextFormField(
                            text: 'Email',
                            controller: emailController,
                            validator: (value) {
                              if (EmailAddress(emailController.text)
                                  .value
                                  .isLeft()) {
                                return ArtistConstant.emailValidator;
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 22, top: 8, bottom: 8, right: 8),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(20),
                                color: ArtistColor.textFieldBackgroundColor),
                            child: DropdownButton(
                              underline: Container(
                                height: 1.0,
                                decoration: const BoxDecoration(
                                    border: Border(
                                  bottom: BorderSide(
                                    color: ArtistColor.backGroundColor,
                                    width: 0.0,
                                  ),
                                )),
                              ),
                              // Initial Value
                              value: dropdownvalue.value,
                              isExpanded: true,
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),
                              iconDisabledColor: ArtistColor.headerColor,
                              iconEnabledColor: ArtistColor.searchGreyColor,
                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(
                                    items,
                                    style: dropdownvalue.value == 'Reason'
                                        ? GoogleFonts.roboto(
                                            textStyle: const TextStyle(
                                            color: ArtistColor.hintTextColor,
                                            fontSize: 16.6,
                                            fontWeight: FontWeight.w400,
                                          ))
                                        : null,
                                  ),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                dropdownvalue.value = newValue!;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 200,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20),
                                  color: ArtistColor.textFieldBackgroundColor),
                              child: TextFormField(
                                cursorColor: ArtistColor.hintTextColor,
                                validator: (value) {
                                  if (MessageValidator(messageController.text)
                                      .value
                                      .isLeft()) {
                                    return 'Field can\'t be empty';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: const InputDecoration(
                                  focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0XFFf5f5f5),
                                  )),
                                  errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0XFFf5f5f5),
                                  )),
                                  contentPadding: EdgeInsets.only(left: 15),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0XFFf5f5f5),
                                  )),
                                  hintStyle: TextStyle(
                                      color: ArtistColor.hintTextColor),
                                  focusColor: ArtistColor.hintTextColor,
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0XFFf5f5f5),
                                  )),
                                  hintText: 'Message',
                                ),
                                controller: messageController,
                              )),
                          const SizedBox(
                            height: 40,
                          ),
                          ArtistThemeButton(
                            text: 'submit'.toUpperCase(),
                            onPressed: () {
                              if (form.currentState!.validate()) {
                                context
                                    .read<SupportBloc>()
                                    .add(EmailChanged(emailController.text));
                                context
                                    .read<SupportBloc>()
                                    .add(NameChanged(nameController.text));
                                context
                                    .read<SupportBloc>()
                                    .add(ReasionChanged(dropdownvalue.value));
                                context.read<SupportBloc>().add(
                                    MessageChanged(messageController.text));
                                if (dropdownvalue.value == 'Reason') {
                                  // ignore: void_checks
                                  return showDialoges(
                                      context, 'Please select reason');
                                } else {
                                  context
                                      .read<SupportBloc>()
                                      .add(const ReportButtonTap());
                                }
                              }
                            },
                          ),
                          if (state.isSubmitting) ...[
                            indiator(ArtistColor.buttomBarColor)
                          ],
                          const SizedBox(
                            height: 40,
                          ),
                        ])),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
