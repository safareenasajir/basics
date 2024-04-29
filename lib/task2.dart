import 'package:flutter/material.dart';
import 'package:sample_1/pages.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  bool isTap1 = false;
  bool isTap2=false;
  bool isTap3=false;
  bool isLike=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "Hi,David",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.waving_hand_rounded,
                    color: Colors.amber,
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                  )
                ],
              ),
              const Text(
                "Explore the world",
                style: TextStyle(color: Colors.black45, fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Search places", border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    "Popular Places",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTap1 = !isTap1;
                          isTap2=false;
                          isTap3=false;

                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: isTap1 == true
                              ? Colors.black
                              : Colors.white),
                      child: const Text("Most Viewed")),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTap2 = !isTap2;
                          isTap1=false ;
                          isTap3=false;
                          
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: isTap2 == true
                              ? Colors.black
                              : Colors.white),
                      child: const Text("Nearby")),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTap3 = !isTap3;
                          isTap2=false;
                          isTap1=false;
                        });
                      },
                      style: TextButton.styleFrom(backgroundColor: isTap3==true?Colors.black:Colors.white),
                      child: const Text("Latest")),
                ],
              ),
              Container(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Pages(),));
                          },
                          child: Container(
                            height:200 ,
                            width: 180,
                            decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/Moeraki-Boulders-New-Zealand.jpg"),
                                    fit: BoxFit.cover)),
                                    child:    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: CircleAvatar(child: InkWell(
                                                onDoubleTap: () {
                                                  setState(() {
                                                    isLike=!isLike;
                                                  });
                                                  
                                                },
                                                child: Icon(Icons.favorite,color: isLike==false?Colors.white:Colors.red,)),),
                                            )
                                          ],
                                          
                                        ),
                                        const Spacer(),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Card(
                                            
                                            color: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Morest,Tokyo",style: TextStyle(fontSize: 15,color: Colors.white),),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.location_on_outlined,color: Colors.white,size: 15,),
                                                      SizedBox(width: 8,),
                                                      Text("Tokyo,japan",style: TextStyle(fontSize: 13,color: Colors.white)),
                                                      Spacer(),
                                                      Icon(Icons.star_outline_rounded,color:Colors.white,size: 12,),
                                                      Text("4.8",style: TextStyle(fontSize: 13,color: Colors.white))
                                                    ],
                                                  )
                                                                                      
                                                                                      
                                                ],
                                                
                                              ),
                                            ),
                                          ),
                                        )
                                        // Padding(
                                        //   padding: const EdgeInsets.all(8.0),
                                        //   child: Container(
                                        //     height:100,
                                        //     color: Colors.black38,
                                        //     alignment:Alignment.bottomLeft ,
                                        //     child: Column(
                                        //       mainAxisAlignment: MainAxisAlignment.end,
                                              
                                        //       children: [
                                        //         Text("Mourest,Tokyo",style: TextStyle(fontSize: 18,color:Colors.white ),)
                                        //       ],
                                        //     ),
                                        //   ),
                                        // )
                                      ],
                                    ),
                          
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 5,
                          ),
                      itemCount: 4),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const[
        BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "Time",icon: Icon(Icons.access_time)),
        BottomNavigationBarItem(label: "Like",icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(label: "Contact",icon: Icon(Icons.perm_contact_cal))
      ]),
    );
  }
}
