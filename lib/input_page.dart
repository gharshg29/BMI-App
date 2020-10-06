import 'package:flutter/material.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'constant.dart';
import 'ResultPage.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: Colm(
                      gender: FontAwesomeIcons.mars,
                      name: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: Colm(
                      gender: FontAwesomeIcons.venus,
                      name: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reusable_Card(
              colour: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Height',
                      style: kNameTextStyle,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumStyle,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'cm',
                        style: kNameTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Colors.white,
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(
                          () {
                            height = newValue.round();
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusable_Card(
                    colour: kActiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: kNameTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FloatingActionButton(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Color(0xFF4C4F5E),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_Card(
                    colour: kActiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: kNameTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FloatingActionButton(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Color(0xFF4C4F5E),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage()));
            },
            child: Container(
              color: kBottomContainercolor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomcontainerheight,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
