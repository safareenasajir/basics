import 'package:flutter/material.dart';

class Navigationtask extends StatefulWidget {
  const Navigationtask({super.key});

  @override
  State<Navigationtask> createState() => _NavigationtaskState();
}

class _NavigationtaskState extends State<Navigationtask> {
  int selectedoption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet:Container(color: Colors.red,height: ,),
      drawer: const Drawer(
        backgroundColor: Colors.cyan,
        // shadowColor: Colors.black,
        
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(

            children: [
              
              CircleAvatar(),
              Spacer(),
              Icon(Icons.brightness_5),
              Row(
                
                children: [
                
                SizedBox(width: 10,),
                Text("Safareena",style: TextStyle(fontWeight: FontWeight.bold),)
              ],),
            ],
          ),
        ),
      ),
        appBar: AppBar(
          // leading:Icon(Icons.abc),
          title: const Text("Navigation bar"),
          backgroundColor: Colors.blue,
           actions: [IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_outlined))],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                tooltip: "home", label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                tooltip: "notification",
                label: "Notification",
                icon: Icon(Icons.notifications)),
            BottomNavigationBarItem(
                tooltip: "chat", label: "chat", icon: Icon(Icons.chat)),
          ],
          currentIndex: selectedoption,
          selectedItemColor: Colors.blue,
          onTap: (int index) {
            setState(() {
              selectedoption = index;
            });
          },
        ),
        body: [
           Center(child: TextButton(
             onPressed: (){
               
                      
                      showModalBottomSheet(
                        
                        
                      
                        constraints: const BoxConstraints(
                          maxHeight: 500,
                          minHeight: 200
                        ),
                        context: context,
                        
                        builder: (context) =>Container(
                          height: 200,
                          child: const Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.photo),
                                title: Text("Photo"),
                              ),
                              ListTile(
                                leading: Icon(Icons.music_note),
                                title: Text("Music"),
                              )
                            ],
                          ),
                        )
                        // BottomSheet(onClosing: (){}, builder: (context) => Container(color: Colors.red,) ,);
                      );
             },
             child: const Text("Home Page"))),
          const Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notification 1"),
                  subtitle: Text("text1"),
                  trailing: Text("10:20"),
                
                ),
              
              ),
              Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification 2"),
              subtitle: Text("text2"),
              trailing: Text("12:00"),


            ),
          ),
            ],
          ),
          ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
            if(index==0){
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text("hello"),
                )
                
              );
            }
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Text("hi"),
                )

            );
          },
          
          )
          
          
        ][selectedoption]);
  }
}
