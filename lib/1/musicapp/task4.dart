import 'package:flutter/material.dart';
import 'package:sample_1/music.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  List name = ["Insomania", "Depression", "Baby Sleep", "Good sleep"];
   List<Map<String,dynamic>> colour=[
    {
      "color":const Color.fromARGB(255, 211, 124, 153),
      "name":"Sleep Meditation",
      "name2":"7 Days Audio Series",
    
    },
    {
       "color":const Color.fromARGB(255, 156, 201, 158),
      "name":"Insomania",
      "name2":"7 Days Audio Series",
    },
    {
       "color": const Color.fromARGB(255, 244, 235, 157),
      "name":"Children Sleep ",
      "name2":"7 Days Audio Series",
    },
    {
      "color":const Color.fromARGB(255, 175, 210, 238),
      "name":"Children Sleep ",
      "name2":"7 Days Audio Series",

    }
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 138, 136, 136),
      // backgroundColor: Colors.bl,
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(221, 43, 43, 43),
        title: const Text(
          "Discover",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 60,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 120,
                            decoration: BoxDecoration(color:currentIndex==index?Colors.blue : const Color.fromARGB(255, 42, 41, 41),borderRadius: BorderRadius.circular(15)),
                            child: TextButton(onPressed: (){
                              setState(() {
                                currentIndex=index;
                              });
                            }, child: Text(name[index],style: TextStyle(color: Colors.white),))),
                          // child: ElevatedButton(
                          //     style: TextButton.styleFrom(
                          //         backgroundColor: Colors.grey,
                          //         foregroundColor: Colors.white),
                          //     onPressed: () {},
                          //     child: Text(name[index])),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 6,
                      ),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Music(),));
                        },
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                              color: colour[index]["color"],
                              borderRadius: BorderRadius.circular(20)),
                          child:  Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  colour[index]['name'],
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  colour[index]['name2'],
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(Icons.headphones, color: Colors.white),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(Icons.track_changes, color: Colors.white)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("          Recents",
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Calming ",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Sounds ",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(
                                Icons.headphones,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Insomnia",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Icon(
                                Icons.track_changes,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("For ",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                                      Text("Children ",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                                      Spacer(),
                                      Icon(Icons.headphones,color: Colors.white,size: 30,)
                            ],
                          ),
                        ),
                                
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tips For",style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                            Text("Sleeping",style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                            Spacer(),
                                            Icon(Icons.headphones,color: Colors.white,size: 30,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(221, 43, 43, 43),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time_filled,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.graphic_eq,
                  color: Colors.grey,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_contact_cal_sharp, color: Colors.grey),
                label: " ")
          ]),
    );
  }
}
