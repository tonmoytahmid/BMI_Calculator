import 'package:flutter/material.dart';
import 'package:flutter_bmiapp/button.dart';
import 'package:flutter_bmiapp/card.dart';
import 'package:flutter_bmiapp/icon.dart';
import 'package:flutter_bmiapp/roundbutton.dart';
import 'package:flutter_bmiapp/screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculaton.dart';

const activecolour = Colors.black;
const inactivecolour = Color(0xFF111328);

enum Gender {
  Male,
  Female,
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Gender selectedgender = Gender.Male;

  int feet = 4;
  int inchi = 5;
  int wight = 60;
  int age = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI Calculator",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                  child: CardWidget(
                      colour: selectedgender == Gender.Male
                          ? inactivecolour
                          : activecolour,
                      cardChild: Iconcontent(
                          icon: FontAwesomeIcons.mars, label: "Male"),
                      onPress: () {
                        setState(() {
                          selectedgender = Gender.Male;
                        });
                      })),
              Expanded(
                  child: CardWidget(
                      colour: selectedgender == Gender.Female
                          ? inactivecolour
                          : activecolour,
                      cardChild: Iconcontent(
                          icon: FontAwesomeIcons.venus, label: "Female"),
                      onPress: () {
                        setState(() {
                          selectedgender = Gender.Female;
                        });
                      })),
            ]),
          ),
          //another expanded for another cardwidget.
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CardWidget(
                  colour: inactivecolour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            feet.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Feet",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Slider(
                          value: feet.toDouble(),
                          min: 0,
                          max: 10,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newvalue) {
                            setState(() {
                              feet = newvalue.round();
                            });
                          }),
                    ],
                  ),
                )),
                Expanded(
                    child: CardWidget(
                  colour: inactivecolour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            inchi.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "inc",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Slider(
                          value: inchi.toDouble(),
                          min: 0,
                          max: 11,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newvalue) {
                            setState(() {
                              inchi = newvalue.round();
                            });
                          }),
                    ],
                  ),
                ))
              ],
            ),
          ),

          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: CardWidget(
                    colour: inactivecolour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Wieght",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              wight.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kg",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundbutton(
                                onPress: () {
                                  setState(() {
                                    wight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus),
                            SizedBox(
                              width: 5,
                            ),
                            roundbutton(
                                onPress: () {
                                  setState(() {
                                    wight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus)
                          ],
                        )
                      ],
                    )),
              ),
              Expanded(
                child: CardWidget(
                    colour: inactivecolour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            roundbutton(
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus),
                            SizedBox(
                              width: 5,
                            ),
                            roundbutton(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus)
                          ],
                        )
                      ],
                    )),
              )
            ],
          )),
          Button(
              hintext: "Calculate",
              onpress: () {
                calculation clc =
                    calculation(feet: feet, inchi: inchi, weight: wight);
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return screen1(
                      calresult: clc.calculateBMi(),
                      resulttext: clc.result(),
                      comment: clc.comment(),
                    );
                  }));
                });
              })
        ],
      ),
    );
  }
}
