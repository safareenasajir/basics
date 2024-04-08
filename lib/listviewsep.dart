import 'package:flutter/material.dart';

class Listviewsep extends StatelessWidget {
  const Listviewsep({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Box"),
        backgroundColor: Colors.blue,
        actions: [IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_outlined))],
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Container(
          height: 70,
          color: Colors.amber,


        );
      }, separatorBuilder: (context, index) => Divider(), itemCount: 4),
    );
  }
}