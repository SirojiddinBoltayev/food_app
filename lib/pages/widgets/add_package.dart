
import 'package:burger_app/pages/class/add_item.dart';
import 'package:flutter/material.dart';


class AddButton extends StatefulWidget {
int number;
  AddButton(Key? key,this.number, ) : super(key: key);


  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {






  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: ,
      children: [
        IconButton(onPressed: (){
          setState(() {
            widget.number++;
            // widget.todos.number = widget.number1;

            // detailsPage("food"," foodInfo", "price", "duration", "foodImage", Colors.black45, queryData,  context);
          });
        }, icon: Icon(Icons.add),),
        Text("${widget.number}"),
        IconButton(onPressed: (){
          setState(() {
            widget.number > 1 ? widget.number--: false;
            // widget.todos.number = widget.number1;
          });
        }, icon: Icon(Icons.remove),),
      ],
    );
  }
}
