import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Magic8BallPage()
    ),
  );
}

class Magic8BallPage extends StatelessWidget {
  const Magic8BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.black,
        ),
        body: BallPage()
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  
  int ballImage = 3;
  
  void ChangeAnswer(){
    ballImage = Random().nextInt(5) + 1;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextButton(
            onPressed: (){
              setState(() {
                ChangeAnswer();
              });
            },
              child: Image.asset('images/ball$ballImage.png')
          ),
        ),
      ),
    );
  }
}

