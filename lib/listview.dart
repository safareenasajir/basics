import 'package:flutter/material.dart';

class Listtask extends StatelessWidget {
  const Listtask({super.key});
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
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            height: 70,
            color: Colors.red,

            child: const Center(child: Text("apple",style: TextStyle(color: Colors.white))),
          ),
          Container(
            height: 70,
            color: Colors.yellow,

            child: const Center(child: Text("banana",style: TextStyle(color: Colors.white),)),
          ),
          Container(
            height: 70,
            color: Colors.orange,

            child: const Center(child: Text("orange",style: TextStyle(color: Colors.white))),
          ),
          Container(
            height: 70,
            color: Colors.green,

            child: const Center(child: Text("kiwi",style: TextStyle(color: Colors.white))),
          )
        ],
      )
    );
  }
}
