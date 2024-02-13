import 'package:flutter/material.dart';
import 'package:flutter_bmiapp/button.dart';
import 'package:flutter_bmiapp/card.dart';
import 'package:flutter_bmiapp/homepage.dart';

class screen1 extends StatelessWidget {
  const screen1(
      {super.key,
      required this.calresult,
      required this.comment,
      required this.resulttext});
  final String calresult;
  final String resulttext;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculation")),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your result",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          )),
          Expanded(
              flex: 5,
              child: CardWidget(
                  colour: inactivecolour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resulttext.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        calresult,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        comment,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))),
          Button(
              hintext: "Recalculate",
              onpress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
    ;
  }
}
