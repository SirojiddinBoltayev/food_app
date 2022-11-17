import 'package:flutter/material.dart';

import 'home_page.dart';


class detailsPage extends StatefulWidget {
  String food;
  String foodInfo;
  String price;
  String duration;
  String foodImage;
  Color colors;
  final queryData;

  detailsPage({
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
  State<detailsPage> createState() => _detailsPageState();
}

class _detailsPageState extends State<detailsPage> {
  @override
  Widget build(BuildContext context) {
    double textSize = 0;
    if (widget.queryData <= 600) {
      textSize = 3;
    } else if (widget.queryData <= 800) {
      textSize = 6;
    } else if (widget.queryData <= 1100) {
      textSize = 8;
    } else if (widget.queryData > 1100) {
      textSize = 10;
    }
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) =>   MyHomePage()),
                        );

                      },
                    ),
                    const Spacer(),
                    const Spacer(
                      flex: 14,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.colors,
                            boxShadow: [
                              BoxShadow(
                                color: widget.colors.withOpacity(0.4),
                                spreadRadius: 15,
                                blurRadius: 15,
                                offset: const Offset(9, 9),
                              ),
                            ],
                            borderRadius:
                            const BorderRadius.only(topRight: Radius.circular(
                                45)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(
                                  flex: 3,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 18,
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
                                          fontSize: 11 + textSize),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(widget.foodInfo, style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15 + textSize,color: Colors.black),),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/icons/ic_pot.png",
                                      color: Colors.black,
                                      scale: 3,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      widget.duration,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9 + textSize),
                                    ),
                                    const Spacer(
                                      flex: 4,
                                    ),
                                    Image.asset(
                                      "assets/icons/ic_duty.png",
                                      color: Colors.black,
                                      scale: 3.0,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "5 ing",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9 + textSize),
                                    ),
                                    const Spacer(
                                      flex: 4,
                                    ),
                                    Image.asset(
                                      "assets/icons/ic_fire.png",
                                      color: Colors.black,
                                      scale: 3,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "438 kal",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 9 + textSize),
                                    ),
                                    const Spacer(
                                      flex: 40,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Text(
                                  "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                const Spacer(),
                                const Text(
                                  "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                const Spacer(
                                  flex: 10,
                                ),
                              ],
                            ),
                          ),
                        )),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
          Column(

            children: [
              Spacer(flex: 10,),

              Row(

                children: [
                  const Spacer(flex: 80,),

                  Expanded(
                    flex: 60,
                    child:

                    Column(

                      children: [
                        Image.asset(
                          widget.foodImage,
                          scale: 1920 / 1200,),
                      ],
                    ),

                  ),
                  Spacer(),


                ],
              ),
              // Spacer(flex: 4,),
              const Spacer(flex: 80,),


            ],
          ),
        ],
      ),
    );
  }
}
