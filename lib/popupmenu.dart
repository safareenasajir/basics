import 'package:flutter/material.dart';

class Popupmenu extends StatefulWidget {
  const Popupmenu({super.key});

  @override
  State<Popupmenu> createState() => _PopupmenuState();
}

class _PopupmenuState extends State<Popupmenu> {
List pages=[
  "aboutus",
  "settings",
  "profile",
  'payments',
  'password'
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: const Text('Popup menu'),

      ),
      body: Center(
        child: PopupMenuButton<int>(
          onSelected: (int index) {
            print(pages[index].toString());
        
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,)))
          },
          itemBuilder: (context) {
           return List.generate(pages.length, (index) =>  PopupMenuItem(child: Text(pages[index].toString())));
        },),
      ),
    );
  }
}