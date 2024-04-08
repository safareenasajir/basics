import 'package:flutter/material.dart';

class Stacktask extends StatelessWidget {
  const Stacktask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter basics"),
        backgroundColor: Colors.blue,
         actions: [IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_outlined))],
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: 50,
              width: 50,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}