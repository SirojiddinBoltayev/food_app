import 'package:burger_app/pages/widgets/burger_widget.dart';
import 'package:burger_app/pages/widgets/menu_widget.dart';
import 'package:burger_app/pages/widgets/salat_widget.dart';
import 'package:hidable/hidable.dart';
import 'package:burger_app/pages/widgets/coffe_widget.dart';
import 'package:burger_app/pages/widgets/meaty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  static String id = "home_page";
  const MyHomePage({Key? key,}) : super(key: key);



  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final ScrollController scrollController = ScrollController();
  final PageController pageController = PageController();



  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.only(left: 12, right: 12, bottom: 8);

  int _selectedItemPosition = 0;
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Colors.transparent;
  Color unselectedColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    var queryData = MediaQuery.of(context).size.width;

    List<Widget> containerColors = [
      coffeeWidget(queryData, scrollController, context),
      salatWidget(queryData, scrollController, context),
      meatyWidget(queryData, scrollController, context),
      burgerWidget(queryData, scrollController, context),
      menuWidget(),
    ];

    return  Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        extendBody: true,
        // body: coffeWidget(queryData,context),
        body: PageView(
          onPageChanged: (index)=>setState(() {
      _selectedItemPosition = index;
      }),
          controller: pageController,
          children:
            containerColors,

        ),
        bottomNavigationBar:
            Hidable(
              controller: scrollController,
              child: SnakeNavigationBar.color(
                // height: 80,
                behaviour: snakeBarStyle,
                snakeShape: snakeShape,
                shape: bottomBarShape,
                padding: padding,

                ///configuration for SnakeNavigationBar.color
                snakeViewColor: selectedColor,
                selectedItemColor:
                    snakeShape == SnakeShape.indicator ? selectedColor : null,
                unselectedItemColor: unselectedColor,

                showUnselectedLabels: showUnselectedLabels,
                showSelectedLabels: showSelectedLabels,

                currentIndex: _selectedItemPosition,
                backgroundColor: Colors.black87,
                onTap: (index1) => setState(() {
                  bottomTapped(index1);
                }),

                items: [
                  BottomNavigationBarItem(
                      icon: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        child: Lottie.asset(
                          repeat: _selectedItemPosition == 0 ? true : false,
                          animate: _selectedItemPosition == 0 ? true : false,
                          "assets/images/json_anime/coffe.json",
                        ),
                      ),
                      label: 'Drink'
                          ''),
                  BottomNavigationBarItem(
                      icon: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        child: Lottie.asset(
                          repeat: _selectedItemPosition == 1 ? true : false,
                          animate: _selectedItemPosition == 1 ? true : false,
                          "assets/images/json_anime/salad_icon.json",
                        ),
                      ),
                      label: 'Salad'),
                  BottomNavigationBarItem(
                      icon: InkWell(
                        // onTap: (){
                        //   setState((){
                        //     _selectedItemPosition = 2;
                        //
                        //   });
                        // },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 2),
                          child: Lottie.asset(
                              "assets/images/json_anime/meaty_icon.json",
                              repeat: _selectedItemPosition == 2 ? true : false,
                              animate: _selectedItemPosition == 2 ? true : false,
                              height: 40),
                        ),
                      ),
                      label: 'Meaty'),
                  BottomNavigationBarItem(
                      icon: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        child: Lottie.asset(
                          repeat: _selectedItemPosition == 3 ? true : false,
                          animate: _selectedItemPosition == 3 ? true : false,
                          "assets/images/json_anime/burger_ic.json",
                        ),
                      ),
                      label: 'Burger'),
                  BottomNavigationBarItem(
                      activeIcon: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        child: Lottie.asset(
                          "assets/images/json_anime/menu_icon.json",
                          onLoaded: (value) {},
                          height: 30,
                          repeat: _selectedItemPosition == 4 ? true : false,
                          animate: _selectedItemPosition == 4 ? true : false,
                        ),
                      ),
                      icon: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        child: Lottie.asset(
                          "assets/images/json_anime/menu_icon.json",
                          onLoaded: (value) {},
                          height: 30,
                          repeat: false,
                          animate: false,
                        ),
                      ),
                      label: 'Menu'),
                ],

                selectedLabelStyle: const TextStyle(fontSize: 14),
                unselectedLabelStyle: const TextStyle(fontSize: 10),
              ),
            ),



    );
  }
  void bottomTapped(int index) {
    setState(() {
      _selectedItemPosition = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}

