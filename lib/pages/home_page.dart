import 'package:burger_app/pages/widgets/list_widget.dart';
import 'package:burger_app/pages/widgets/meaty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // final BorderRadius _borderRadius = const BorderRadius.only(
  //   topLeft: Radius.circular(25),
  //   topRight: Radius.circular(25),
  // );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;
  SnakeShape snakeShape = SnakeShape.indicator;

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = Colors.transparent;
  Color unselectedColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    var queryData = MediaQuery.of(context).size.height;

    List<Widget> containerColors = [
      Center(
        child: Container(
          color: Colors.orange,
        ),
      ),
      Center(
        child: Container(
          color: Colors.indigo,
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            child: Lottie.asset(
              "assets/images/json_anime/80163-choose.json",
            ),
          ),
        ),
      ),
      meatyWidget(queryData, context),
      Center(
        child: Container(color: Colors.yellow),
      ),
      Center(
        child: Container(color: Colors.blue),
      ),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      // body: coffeWidget(queryData,context),
      body: containerColors[_selectedItemPosition],
      bottomNavigationBar: SnakeNavigationBar.color(
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
          _selectedItemPosition = index1;
        }),

        items: listWidget,

        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }
}
