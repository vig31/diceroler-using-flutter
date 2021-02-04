import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO:declare var u need
  //for imgaes we have date tyye of AssetImges
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');
  AssetImage diceimg1;
  AssetImage diceimg2;
  //TODO:open page or loading sreen
  @override
  void initState() {
    super.initState();
    setState(() {
      diceimg1 = three;
      diceimg2 = three;
    });
  }

  //TODO:logic of botton
  void btnacn() {
    //random number generation
    var random1 = (1 + Random().nextInt(6));
    var random2 = (1 + Random().nextInt(6));
    AssetImage dsplyimg1;
    AssetImage dsplyimg2;

    switch (random1) {
      case 1:
        dsplyimg1 = one;
        break;
      case 2:
        dsplyimg1 = two;
        break;
      case 3:
        dsplyimg1 = three;
        break;
      case 4:
        dsplyimg1 = four;
        break;
      case 5:
        dsplyimg1 = five;
        break;
      case 6:
        dsplyimg1 = six;
        break;
    }
    switch (random2) {
      case 1:
        dsplyimg2 = one;
        break;
      case 2:
        dsplyimg2 = two;
        break;
      case 3:
        dsplyimg2 = three;
        break;
      case 4:
        dsplyimg2 = four;
        break;
      case 5:
        dsplyimg2 = five;
        break;
      case 6:
        dsplyimg2 = six;
        break;
    }
    setState(() {
      diceimg1 = dsplyimg1;
      diceimg2 = dsplyimg2;
    });

    //TODO:design part
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3A47),
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: diceimg1,
              width: 100,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: diceimg2,
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(51, 12, 51, 12),
                  color: Colors.lightBlueAccent,
                  // Color(0xff273c75),
                  onPressed: btnacn,
                  child: Text(
                    'Roll!',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  splashColor: Colors.white,
                  elevation: 27.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
