import 'package:flutter/material.dart';

class Inkwelltask extends StatefulWidget {
  const Inkwelltask({super.key});

  @override
  State<Inkwelltask> createState() => __InkwelltaskState();
}

class __InkwelltaskState extends State<Inkwelltask> {
  double side=100;
  bool _isturnedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lightbulb_outline,
                        color: _isturnedOn ? Colors.yellow : Colors.black,
                        size: 60,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isturnedOn =! _isturnedOn;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          color: Colors.yellow,
                          height: 50,
                          width: 150,
                          child: Center(child: Text(_isturnedOn? "Tap Turned off":'Tap Turned on',style: const TextStyle(fontSize: 20),)),
                        ),
                      )
                    ],
          ),
        )
        // body: Center(
        //   child: Container(
        //     height: side,
        //     width: side,
        //     color: Colors.blue,
        //     child: InkWell(
        //       onTap: () {
        //         setState(() {
        //           side==100?side=300:side=100;

                  
        //         });
        //       },
        //     ),
        //   ),
        // ),
    );
  }
}
