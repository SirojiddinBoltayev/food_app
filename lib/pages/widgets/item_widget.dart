import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_buttons.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../details_page.dart';
Widget itemWidget(String food, String food_info, String price, String duration,
    String food_image, Color colors, queryData, context) {
  // Card buildButton({
  //   required onTap,
  //   required title,
  //   required text,
  //   required leadingImage,
  // }) {
  //   return Card(
  //     shape: const StadiumBorder(),
  //     margin: const EdgeInsets.symmetric(
  //       horizontal: 20,
  //     ),
  //     clipBehavior: Clip.antiAlias,
  //     elevation: 1,
  //     child: ListTile(
  //       onTap: onTap,
  //       leading: CircleAvatar(
  //         backgroundImage: AssetImage(
  //           leadingImage,
  //         ),
  //       ),
  //       title: Text(title ?? ""),
  //       subtitle: Text(text ?? ""),
  //       trailing: const Icon(
  //         Icons.keyboard_arrow_right_rounded,
  //       ),
  //     ),
  //   );
  // }
  void setState(VoidCallback fn) {}

int count = 1;

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
          shadowColor: Colors.greenAccent,
          elevation: 18,
          color: colors,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 3,
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
                      food,
                      style: const TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  food_info,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Spacer(
                  flex: 6,
                ),
                Row(
                  children: [
                    const Text(
                      "Narxi:",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                    const Spacer(),
                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/icons/ic_pot.png",
                      color: Colors.black,
                      scale: 4.5,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      duration,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 10),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/icons/ic_duty.png",
                      color: Colors.black,
                      scale: 4.5,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "5 ing",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 10),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(6),
                      onTap: ()
                      {
                            QuickAlert.show(
                              widget: Row(children:  [
                                Spacer(),
                                InkWell(onTap: (){ setState(() {count += count;});}, child: Icon(Icons.add)),
                        Text("$count"),
                                IconButton(onPressed: (){setState(() {count--;});}, icon: Icon(Icons.remove)),
                                Spacer(),

                              ],),
                              context: context,
                              type: QuickAlertType.success,
                              text: 'Transaction Completed Successfully!',
                              // autoCloseDuration: const Duration(seconds: 3),
                              confirmBtnText: "yaxshi",
                              customAsset: food_image,

                              );



                      },


                      highlightColor: Colors.deepPurple,
                      focusColor: Colors.deepPurple,
                      hoverColor: Colors.deepPurple,
                      splashColor: Colors.deepPurple,
                      // radius: 20,
                      child: Container(
                        width: queryData / 25,
                        decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            borderRadius: BorderRadius.circular(6)),
                        height: queryData / 25,
                        child: Center(
                          child: Icon(
                            Icons.add_circle_outline_outlined,
                            size: queryData / 35,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: queryData / 80,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(6),
                      onTap: () {
                        print(colors);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext) => DetailsPage(food, food_info, price, duration, food_image, colors, queryData, context)));
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
                        height: queryData / 25,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.0, left: 6.0),
                            child: Text(
                              "Batafsil",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
      Row(
        children: [
          const Spacer(),
          Image.asset(
            food_image,
            scale: 9.5,
          ),
        ],
      ),
    ],
  );
}
