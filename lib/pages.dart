import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/Moeraki-Boulders-New-Zealand.jpg"),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.arrow_back_ios))),
                          const Spacer(),
                          const CircleAvatar(
                            child: Icon(Icons.save),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Andes Mountain",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Tokyo,Japan",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$230",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Row(
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("Details")
                ],
              ),
               Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: const Row(
                    children: [
                      
                      Icon(Icons.access_time_filled),
                      Text("  5 hours"),
                      Spacer(),
                      Icon(Icons.cloud),
                      Text("  30c"),
                     Spacer(),
                      Icon(Icons.star_rate_rounded),
                      Text("  4.7")
                    ],
                  ),
                ),
              ),
              const Expanded(
                          child: SingleChildScrollView(
                            child: Text(
                                "A good example of a paragraph contains a topic sentence, details and a conclusion. 'There are many different kinds of animals that live in China. Tigers and leopards are animals that live in China's forests in the north. In the jungles, monkeys swing in the trees and elephants walk through the brush. There are camels in the deserts in China that people use for transportation. Lots of different kinds of animals make their home in China.A good example of a paragraph contains a topic sentence, details and a conclusion. 'There are many different kinds of animals that live in China. Tigers and leopards are animals that live in China's forests in the north. In the jungles, monkeys swing in the trees and elephants walk through the brush. There are camels in the deserts in China that people use for transportation. Lots of different kinds of animals make their home in China."),
                          ),
              ),
              Positioned(
                            top: 110,
                            child: Container(
                              width: 350,
                              height: 50,
                              child: ElevatedButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      foregroundColor: Colors.white,
                                      ),
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Book Now"),
                                      SizedBox(
                            width: 15,
                                      ),
                                      Icon(
                            Icons.send,
                            color: Colors.white,
                                      )
                                    ],
                                  )),
                            ))
            ],
          ),
        ),
      ),
    );
  }
}
