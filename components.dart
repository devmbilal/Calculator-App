import 'package:flutter/material.dart';
import 'package:calculator_app/constants.dart';
import 'package:math_expressions/math_expressions.dart';

class MyButton extends StatelessWidget {
 final String text;
 final Color color;
 final VoidCallback onpress;
  const MyButton({Key? key,required this.text,this.color=orange,required this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onpress,
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            color:color,
            shape: BoxShape.circle,
          ),
          child: Center(child: Text(text,style: const TextStyle(fontSize: 20,color: white),)),
        ),
      ),
    );
  }
}
