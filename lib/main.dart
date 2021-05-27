import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = 0xFF1D1E33;
const pinkColor = 0xFFEB1555;
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: Color(activeColor),
                    cardP: InsideComponent(txt: "MALE",ic: FontAwesomeIcons.mars,),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(colour: Color(activeColor),
                  cardP: InsideComponent(txt: "FEMALE",ic: FontAwesomeIcons.venus,),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(colour: Color(activeColor)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(colour: Color(activeColor)),
                ),
                Expanded(
                  child: ReuseableCard(colour: Color(activeColor)),
                ),
              ],
            ),
          ),
          Container(
            color: Color(pinkColor),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

class InsideComponent extends StatelessWidget {
  InsideComponent({
    @required this.ic,
    @required this.txt
  });
  final IconData ic;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ic,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardP});
  final Color colour;
  final Widget cardP;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardP,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
