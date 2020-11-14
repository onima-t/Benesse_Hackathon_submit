import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=Random().nextInt(6) + 1;
  int rightDiceNumber=Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      print('diceNumber = $leftDiceNumber');
                    });
                  },
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                      print(rightDiceNumber);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/dice$rightDiceNumber.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          FlatButton(
            onPressed: (){
              setState(() {
                leftDiceNumber=Random().nextInt(6) + 1;
                rightDiceNumber=Random().nextInt(6) + 1;
              });
            },
            child: Text('Roll dices'),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
