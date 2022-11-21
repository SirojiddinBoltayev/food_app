import 'package:flutter/material.dart';
import 'item_widget.dart';

Widget burgerWidget(queryData,  scrollController, context) {

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
    child: Column(
      children: [
        CustomScrollView(
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
                  "Fast food ",
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
                    food: "Espresso",
                    foodInfo: "Espresso o'rtacha sutli coffee",
                    price: "10 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_espresso.png",
                    colors: const Color(0xffF2DFE1),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Latte",
                    foodInfo: "Latte sutli shirin coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_latte.png",
                    colors: const Color(0xffDCC7B1),
                    queryData: queryData,

                  ),
                  itemWidget(
                    food: "Macchiato",
                    foodInfo: "Macchiato coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_macchiato.png",

                    colors: const Color(0xffFFC5A8),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Ristreto",
                    foodInfo: "Ristreto coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_ristretto.png",

                    colors: const Color(0xff71C3A1),
                    queryData: queryData,
                  ), itemWidget(
                    food: "Espresso",
                    foodInfo: "Espresso o'rtacha sutli coffee",
                    price: "10 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_espresso.png",
                    colors: const Color(0xffF2DFE1),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Latte",
                    foodInfo: "Latte sutli shirin coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_latte.png",
                    colors: const Color(0xffDCC7B1),
                    queryData: queryData,

                  ),
                  itemWidget(
                    food: "Macchiato",
                    foodInfo: "Macchiato coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_macchiato.png",

                    colors: const Color(0xffFFC5A8),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Ristreto",
                    foodInfo: "Ristreto coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_ristretto.png",

                    colors: const Color(0xff71C3A1),
                    queryData: queryData,
                  ), itemWidget(
                    food: "Espresso",
                    foodInfo: "Espresso o'rtacha sutli coffee",
                    price: "10 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_espresso.png",
                    colors: const Color(0xffF2DFE1),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Latte",
                    foodInfo: "Latte sutli shirin coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_latte.png",
                    colors: const Color(0xffDCC7B1),
                    queryData: queryData,

                  ),
                  itemWidget(
                    food: "Macchiato",
                    foodInfo: "Macchiato coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_macchiato.png",

                    colors: const Color(0xffFFC5A8),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Ristreto",
                    foodInfo: "Ristreto coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_ristretto.png",

                    colors: const Color(0xff71C3A1),
                    queryData: queryData,
                  ), itemWidget(
                    food: "Espresso",
                    foodInfo: "Espresso o'rtacha sutli coffee",
                    price: "10 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_espresso.png",
                    colors: const Color(0xffF2DFE1),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Latte",
                    foodInfo: "Latte sutli shirin coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_latte.png",
                    colors: const Color(0xffDCC7B1),
                    queryData: queryData,

                  ),
                  itemWidget(
                    food: "Macchiato",
                    foodInfo: "Macchiato coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_macchiato.png",

                    colors: const Color(0xffFFC5A8),
                    queryData: queryData,
                  ),
                  itemWidget(
                    food: "Ristreto",
                    foodInfo: "Ristreto coffee",
                    price: "80 000 sum",
                    duration: "5 min",
                    foodImage: "assets/images/coffee/ic_ristretto.png",

                    colors: const Color(0xff71C3A1),
                    queryData: queryData,
                  ),

                ]),
          ],
        ),
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