import 'package:flutter/material.dart';

class SellPage extends StatefulWidget {
  int number;
   SellPage({Key? key, required this.number}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("${widget.number}",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w900),),
      ),
    );
  }
}
