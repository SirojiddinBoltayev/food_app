import 'package:burger_app/pages/widgets/sell_page.dart';
import 'package:burger_app/pages/widgets/success_alert.dart';
import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';

class CustomAlert extends StatefulWidget {
  String food;
  String foodImage;
  String foodInfo;
  Color colors;

  CustomAlert({
    Key? key,
    required this.food,
    required this.foodImage,
    required this.foodInfo,
    required this.colors,
  }) : super(key: key);

  @override
  State<CustomAlert> createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  int count = 1;
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Shadow(
      options: ShadowOptions(
        overlayColor: Colors.black12,
        blur: 7,
        offset: Offset(0, 0),
      ),
      child: Container(
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 200, bottom: 200, left: 25, right: 25),
          child: Card(
            color: widget.colors,
            child: Column(
              children: [
                Spacer(),
                Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.foodImage,
                          fit: BoxFit.cover,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.food),
                      ],
                    )),
                Text(widget.foodInfo),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisAlignment: ,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          number++;
                          count = number;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                    ),
                    Text("${count}"),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          number > 1 ? number-- : false;
                          count = number;
                        });
                      },
                      icon: Icon(
                        Icons.remove,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Bekor qilish"),
                      ),
                      Spacer(),

                      // SizedBox(width: 20,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          showDialog(
                              useSafeArea: false,
                              context: context,
                              builder: (BuildContext context) {
                                return  alertSuccess(context);
                              });
                          // Navigator.of(context).pushReplacement(
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) =>
                          //             SellPage(number: count)));
                        },
                        child: Text("Buyurtma berish"),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
