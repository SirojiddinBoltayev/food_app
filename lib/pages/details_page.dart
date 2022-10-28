import 'package:flutter/material.dart';

import 'home_page.dart';

Widget DetailsPage(String food, String food_info, String price, String duration,
    String food_image, Color colors, queryData, context) {
  return Scaffold(
    body: Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext) => MyHomePage(
                            title: '',
                          ),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  Spacer(
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
                          color: colors,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.greenAccent.withOpacity(0.4),
                              spreadRadius: 15,
                              blurRadius: 15,
                              offset: Offset(9, 9),
                            ),
                          ],
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(45)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(
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
                                    food,
                                    style: const TextStyle(
                                        color: Colors.indigo,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(food_info,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                              Spacer(),
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
                                    duration,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
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
                                  const Text(
                                    "5 ing",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
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
                                  const Text(
                                    "438 kal",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "Что бы мне не говорили, а самый вкусный шашлык получается из баранины. Есть правда один минус. На базаре невозможно купить нормальную баранину, все скупают на корню шашлычники.",
                                style: TextStyle(color: Colors.black54),
                              ),
                              Spacer(),
                              Text(
                                "Не беда, если руки растут из нужного места, шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи",
                                style: TextStyle(color: Colors.black54),
                              ),
                              Spacer(
                                flex: 3,
                              ),
                            ],
                          ),
                        ),
                      )),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            // Spacer(),
            Row(
              children: [
                Spacer(
                  flex: 10,
                ),
                Image.asset(
                  food_image,

                  scale: 2.5,),
                // Spacer(),
              ],
            ),
            Spacer(
            ),
          ],
        ),
      ],
    ),
  );
}
