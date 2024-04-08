import 'package:flutter/material.dart';

class Toasting extends StatelessWidget {
  const Toasting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter basics"),
        backgroundColor: Colors.blue,
         actions: [IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_outlined))],
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          

        }, child: const Text("show toast")),
      ),
      
    );
  }
}