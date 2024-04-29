import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image:
                        AssetImage("assets/Moeraki-Boulders-New-Zealand.jpg"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CircleAvatar(
                      child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
                  Container(
                      height: 230,
                      alignment: Alignment.bottomLeft,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Northern Moundain",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                "Seminyake, Bali ,Indonesia, 80361",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,

                            children: [
                              Text(
                                "\$99",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                              Text("/person",style: TextStyle(fontSize: 18,color: Colors.white),),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 30,),
                                  Text("4.8",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                                ],
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
