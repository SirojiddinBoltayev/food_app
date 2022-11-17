import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {

  final VoidCallback onChanged;
  return AnimatedSplashScreen(
    splash: Lottie.asset("assets/images/json_anime/80163-choose.json",fit: BoxFit.cover),

    // duration: 2000,
    splashIconSize: 350,
    nextScreen:  MyHomePage(),

  );
}}