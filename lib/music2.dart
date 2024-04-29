import 'package:flutter/material.dart';

class Music2 extends StatefulWidget {
  const Music2({super.key});

  @override
  State<Music2> createState() => _Music2State();
}

class _Music2State extends State<Music2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 88, 57, 57),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 57, 57),
        leading: IconButton(
          icon :const Icon(Icons.arrow_back_ios),
          color: Colors.white, onPressed: () { Navigator.pop(context); },
        ),
        title: const Text(
          "Playing Now",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 88, 57, 57,),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image:
                            AssetImage("assets/Moeraki-Boulders-New-Zealand.jpg"),fit: BoxFit.cover)),
              ),
              
              const Text("SUMMER",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("02.46",style: TextStyle(color: Colors.white),),
                    const SizedBox(width: 10,),
                    Container(height: 5,width: 270,color: Colors.white,),
                    const SizedBox(width: 10,),
                    const Text("04.03",style: TextStyle(color: Colors.white))
                    
                  ],
                ),
                
              ),
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.shuffle,color: Colors.white,size: 35,),
                    Icon(Icons.arrow_left,color: Colors.white,size: 35,),
                    Icon(Icons.pause_circle_outline,color: Colors.white,size: 35,),
                    Icon(Icons.arrow_right,color: Colors.white,size: 35,),
                    Icon(Icons.shuffle,color: Colors.white,size: 35,)
                
                
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
