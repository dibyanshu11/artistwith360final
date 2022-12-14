import 'package:artist_replugged/presentation/splash/splash_screen_equitment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useMyHook();
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      Image.asset(
        'assets/images/ARPSplash-screen-sketch.jpg',
        fit: BoxFit.fill,
      ),
      Center(
          child: Container(
        alignment: Alignment.center,
        height: 300,
        child: Column(
          children: [
            Image.asset(
              'assets/icons/artistwhite.png',
              height: 120,
            ),
          ],
        ),
      ))
    ]));
  }
}
