import 'package:burger_app/pages/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';
import '../details_page.dart';

class itemWidget extends StatefulWidget {
  String food;
  String foodInfo;
  String price;
  String duration;
  String foodImage;
  Color colors;
  final queryData;
  itemWidget({
    Key? key,
    required this.food,
    required this.foodInfo,
    required this.foodImage,
    required this.price,
    required this.duration,
    required this.colors,
    required this.queryData,
  }) : super(key: key);

  @override
  State<itemWidget> createState() => _itemWidgetState();
}

class _itemWidgetState extends State<itemWidget> {

  @override
  Widget build(BuildContext context) {
    Route createRoute() {
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              detailsPage(food: widget.food,
                  foodInfo: widget.foodInfo, foodImage: widget.foodImage, price:
                  widget.price, duration: widget.duration, colors: widget.colors, queryData:
                  widget.queryData, ),
        transitionsBuilder: (context, animation, secondaryAnimation, child)
      {
        const begin = Offset(1.0, 2.0);
        const end = Offset.zero;
        const curve = Curves.linear;
        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },);
    }

    double textSize = 0;
    double scaleSize = 0;
    if (widget.queryData <= 600) {
      textSize = 3;
      scaleSize = 0.50;
    } else if (widget.queryData <= 800) {
      textSize = 6;
      scaleSize = 1.0;
    } else if (widget.queryData <= 1100) {
      textSize = 8;
      scaleSize = 1.5;
    } else if (widget.queryData > 1100) {
      textSize = 10;
      scaleSize = 2.0;
    }

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 25.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              // side: const BorderSide(
              // ),
            ),
            shadowColor: widget.colors,
            elevation: 18,
            color: widget.colors,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 2,
                        color: Colors.indigo,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        widget.food,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 7 + textSize),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    widget.foodInfo,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 11 + textSize,color: Colors.black),
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        "Narxi:",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 7 + textSize),
                      ),
                      const Spacer(),
                      Text(
                        widget.price,
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontSize: 7 + textSize),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/icons/ic_pot.png",
                        color: Colors.black,
                        scale: 5.0 - scaleSize,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.duration,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 7 + textSize),
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/icons/ic_duty.png",
                        color: Colors.black,
                        scale: 5.0 - scaleSize,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5 ing",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 7 + textSize),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {
                              showDialog(
                                  useSafeArea: false,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomAlert(
                                      food: widget.food,
                                      foodImage: widget.foodImage,
                                      foodInfo: widget.foodInfo,
                                      colors: widget.colors,
                                    );
                                  });
                            },

                            highlightColor: Colors.black45,
                            focusColor: Colors.black45,
                            hoverColor: Colors.black45,
                            splashColor: Colors.black45,
                            // radius: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: Icon(
                                  Icons.add_circle_outline_outlined,
                                  size: 14 + textSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: widget.queryData / 80,
                        ),
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {
                              Navigator.of(context).push(createRoute()
                              // showDialog(
                              //   useSafeArea: false,
                              //   context: context,
                              //   builder: (BuildContext context) {
                              //     return
                              //
                              //       detailsPage(food: widget.food,
                              //         foodInfo: widget.foodInfo, foodImage: widget.foodImage, price:
                              //         widget.price, duration: widget.duration, colors: widget.colors, queryData:
                              //         widget.queryData,
                              //       );
                              //   },
                              );
                            },
                            highlightColor: Colors.deepPurple,
                            focusColor: Colors.deepPurple,
                            hoverColor: Colors.deepPurple,
                            onHover: (c) {},
                            splashColor: Colors.deepPurple,
                            // radius: 20,
                            child: Container(
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(right: 5.0, left: 6.0),
                                  child: Text(
                                    "Batafsil",
                                    style: TextStyle(fontSize: 9 + textSize),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 3,
              child: Image.asset(
                widget.foodImage,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

