import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

Widget splashScreen(){
  return AnimatedSplashScreen(
    splash: Lottie.asset("assets/images/json_anime/80163-choose.json",fit: BoxFit.cover),

    // duration: 2000,
    splashIconSize: 350,
    nextScreen: const MyHomePage(title: 'Hello',),

  );
}