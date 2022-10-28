import 'package:flutter/material.dart';

import 'item_widget.dart';

Widget meatyWidget(queryData,context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    child: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            const SizedBox(height: 35,),
            const Text(
              "Siz bizni tanlaganingizdan juda xursandmiz. ",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 5,),

            const Text(
              "Bizning restoranga tashrif buyurganingiz uchun rahmat!",
              style: TextStyle(fontSize: 14,color: Colors.indigo),
            ),
            const SizedBox(height: 15,),

          ]),
        ),
        SliverGrid.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            childAspectRatio: 0.5,
            crossAxisCount: 3,
            children: [
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffF2DFE1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffDCC7B1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffFFC5A8),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xff71C3A1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffA8B6FF),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffFFE7A8),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffCEA8FF),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffA8FFB1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xff71C3A1),queryData,context), itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffF2DFE1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffDCC7B1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffFFC5A8),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xff71C3A1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffA8B6FF),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffFFE7A8),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffCEA8FF),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xffA8FFB1),queryData,context),
              itemWidget("Shashlik", "Qo'y go'shtidan shashlik", "80 000 sum", "5 min",
                  "assets/images/shashlik_sheep.png", Color(0xff71C3A1),queryData,context),

            ]),
      ],
    ),

    // GridView.count(
    //   childAspectRatio: 0.56,
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 20,
    //   padding: EdgeInsets.only(top:40,left: 10,right: 10),
    //   crossAxisCount: 3,
    //   children: [
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //     Stack(
    //
    //       children: [
    //
    // Container(
    //   padding: const EdgeInsets.only(top: 25.0),
    //   child: Card(
    //     shape: RoundedRectangleBorder( //<-- SEE HERE
    //       borderRadius: BorderRadius.circular(20),
    //       side: BorderSide(
    //         color: Colors.greenAccent,
    //       ),
    //     ),
    //     shadowColor: Colors.limeAccent,
    //     elevation: 25,
    //     color: Color(0xffF2DFE1),
    //
    //             child:  Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     SizedBox(height: 25,),
    //                     Row(children: [
    //                       Container(height: 12,width: 2,color: Colors.indigo,),
    //                       SizedBox(width: 3,),
    //
    //                       Text("Shashlik",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 15,),
    //
    //                    Text("Shashlik qo'y go'shtidan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
    //
    //                     SizedBox(height: 30,),
    //
    //                     Row(children: [
    //
    //                       Text("Narxi:",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                       Spacer(),
    //                       Text("80 000 sum",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 10),),
    //                     ],),
    //                     SizedBox(height: 10,),
    //
    //                     Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                       Image.asset("assets/icons/ic_pot.png",color: Colors.black,scale: 4.5,),
    //                       SizedBox(width: 5,),
    //
    //                       Text("20 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                       Spacer(),
    //                         Image.asset("assets/icons/ic_duty.png",color: Colors.black,scale: 4.5,),
    //                         SizedBox(width: 5,),
    //                         Text("5 ing",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 10),),
    //                     ],),
    //                     Row(children: [
    //
    //                     ],),
    //
    //
    //                   ],
    //                 ),
    //             ),
    //             ),
    // ),
    //         Row(
    //           children: [
    //             Spacer(),
    //
    //             Image.asset("assets/images/shashlik_sheep.png",scale: 2.5,),
    //           ],
    //         ),
    //
    //       ],
    //
    //     ),
    //
    //
    //       ],
    //
    //     ),
  );

}

