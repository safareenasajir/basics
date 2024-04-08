import 'package:flutter/material.dart';

class Flextask extends StatelessWidget {
  const Flextask({super.key});

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
        child: Container(
          child: Padding(padding: EdgeInsets.all(14),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                height: 200,
                width: 380,
                color: Colors.amber,
              )),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Container(
                    height: 175,
                    width: 200,
                    color: Colors.red,
                  )),
                  Flexible(child: Container(
                    height: 175,
                    width: 200,
                    color: Colors.blue,
                  )),

                ],
              ),
              
            ],
          ),
          ),
        ),
      ),
    );
  }
}