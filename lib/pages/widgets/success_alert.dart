import 'package:burger_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shadow/shadow.dart';

Widget alertSuccess(context) {

  return Shadow(
    options: const ShadowOptions(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 12,
                child: Lottie.asset(
                    "assets/images/json_anime/97240-success.json",
                    fit: BoxFit.cover,
                    repeat: false),
              ),
             const Text("Bajarildi.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             const Text("Buyurtma berganingiz uchun raxmat!!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Spacer(),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>  MyHomePage()));
                  },
                  child: Text("Yaxshi"),
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
