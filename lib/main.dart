import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('تطابق الصور'),
          backgroundColor: Colors.indigo[800],
        ),
        body: name(),
      ),
    ),
  );
}

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  int leftimages = 9;
  int reimages = 2;
  void left_r() {
    leftimages = Random().nextInt(8) + 1;
    reimages = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftimages == reimages ? 'مبروووك لقد نجت' : 'حاول مرة آخري ',
          style: TextStyle(fontSize: 42.00, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      left_r();
                    });

                    // Add your desired action here
                  },
                  child: Image.asset('images/image-$leftimages.png'),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  setState(() {
                    left_r();
                  });

                  // Add your desired action here
                },
                child: Image.asset('images/image-$reimages.png'),
              )),
            ],
          ),
        ),
      ],
    );
  }
}
