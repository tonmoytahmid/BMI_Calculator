import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.hintext, required this.onpress});
  final Function() onpress;
  String hintext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 80,
        color: Colors.red,
        child: Text(
          hintext,
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
