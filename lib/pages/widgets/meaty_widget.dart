import 'package:burger_app/pages/widgets/add_package.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';

Widget meatyWidget( queryData,scrollController,  context) {
  double textSize = 0;
  int item = 3;
  double itemPadding = 3;
  if (queryData <= 600) {
    itemPadding = 3;
    item = 3;
    textSize = 3;
  } else if (queryData <= 800) {
    itemPadding = 5;
    item = 4;
    textSize = 4;
  } else if (queryData <= 1100) {
    itemPadding = 5;
    item = 5;
    textSize = 5;
  } else if (queryData > 1100) {
    textSize = 6;
    itemPadding = 6;
    item = 6;
  }
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: CustomScrollView(
      scrollBehavior: CustomScroll(),
      controller: scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            const SizedBox(
              height: 35,
            ),
            Text(
              "Siz bizni tanlaganingizdan juda xursandmiz. ",
              style: TextStyle(fontSize: 11 + textSize),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Bizning restoranga tashrif buyurganingiz uchun rahmat!",
              style: TextStyle(fontSize: 11 + textSize, color: Colors.indigo),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Taomlar",
              style: TextStyle(fontSize: 18, color: Colors.teal),
            ),
          ]),
        ),
        SliverGrid.count(

            crossAxisSpacing: 2 + itemPadding,
            mainAxisSpacing: 10,
            childAspectRatio: 0.46,
            crossAxisCount: item,

            children: [
              itemWidget(
                food: "Shashlik",
                foodInfo: "Qo'y go'shtidan shashlik",
                price: "80 000 sum",
                duration: "5 min",
                foodImage: "assets/images/shashlik_sheep.png",
                colors: const Color(0xffF2DFE1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffDCC7B1),
                queryData: queryData,

              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffFFC5A8),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xff71C3A1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffA8B6FF),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffFFE7A8),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffCEA8FF),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffA8FFB1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xff71C3A1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffF2DFE1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffDCC7B1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffFFC5A8),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xff71C3A1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffA8B6FF),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors:  const Color(0xffFFE7A8),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors:  const Color(0xffCEA8FF),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xffA8FFB1),
                queryData: queryData,
              ),
              itemWidget(
                  food: "Shashlik",
                  foodInfo: "Qo'y go'shtidan shashlik",
                  price: "80 000 sum",
                  duration: "5 min",
                  foodImage: "assets/images/shashlik_sheep.png",
                  colors: const Color(0xff71C3A1),
                 queryData: queryData,

              ),
            ]),
      ],
    ),
  );
}
class CustomScroll extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
