import 'package:artist_replugged/presentation/login/presentation/login_screen.dart';
import 'package:artist_replugged/presentation/register/presentation/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyAuthScreen extends HookWidget {
  const VerifyAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/ARPSplash-screen-sketch.jpg',
            fit: BoxFit.fill,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 400,
              width: 300,
              child: Column(
                children: [
                  Image.asset(
                    'assets/icons/artistwhite.png',
                    height: 120,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('real life of emerging music artists'.toUpperCase(),
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => RegisterScreen()));
                    },
                    child: LayoutBuilder(builder:
                        (BuildContext ctx, BoxConstraints constraints) {
                      return Container(
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0XFFffffff),
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Text('Join Here'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontFamily: 'Fjalla One',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF45154d))),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const LoginScreen()));
                    },
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0XFFffffff),
                          ),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Text('Login Here'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Fjalla One',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFFffffff),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
