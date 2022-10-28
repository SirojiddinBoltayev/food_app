import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


List<BottomNavigationBarItem> listWidget = [

  BottomNavigationBarItem(icon: AnimatedContainer(duration: Duration(seconds: 2),child: Lottie.asset("assets/images/json_anime/coffe.json",),), label: 'Drink'
      ''),
  BottomNavigationBarItem(icon: AnimatedContainer(duration: Duration(seconds: 2),child: Lottie.asset("assets/images/json_anime/salad_icon.json",),), label: 'Salad'),
  BottomNavigationBarItem(icon: AnimatedContainer(duration: Duration(seconds: 2),child: Lottie.asset("assets/images/json_anime/meaty_icon.json",height: 40),), label: 'Meaty'),
  BottomNavigationBarItem(icon: AnimatedContainer(duration: Duration(seconds: 2),child: Lottie.asset("assets/images/json_anime/burger_ic.json",),), label: 'Burger'),
  BottomNavigationBarItem(icon: AnimatedContainer(duration: Duration(seconds: 2),child: Lottie.asset("assets/images/json_anime/menu_icon.json",height: 30),), label: 'Menu'),
];
