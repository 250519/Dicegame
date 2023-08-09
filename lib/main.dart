import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body: const Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DiceepageState();
}



class _DiceepageState extends State<Dicepage> {
  int leftDicenumber = 1;
  int rightDicenumber=1;
  @override
  Widget build(BuildContext context) {



    void rolldice(){
      setState(() {
        leftDicenumber = Random().nextInt(6)+1;
        rightDicenumber = Random().nextInt(6)+1;
        print('$leftDicenumber');
      });
    }
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    leftDicenumber = Random().nextInt(6)+1;
                    rightDicenumber = Random().nextInt(6)+1;


                    print('$leftDicenumber');
                  });

                },
                child: Image(
                  image: AssetImage("images/dice$leftDicenumber.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed:(){
                  rolldice();

                },
                child: Image.asset('images/dice$rightDicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
