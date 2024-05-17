import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
   const Searchpage({super.key});


  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
   List<String> items= [
    "apple",
    'banana',
    'orange',
    'mango',
    'pineapple',
    'grapes',
    'watermelon'
  ];

  List<String> filteredItem=[];

  @override
  void initState(){
    super.initState();
    filteredItem.addAll(items);
  }
  void filterItem(String query){
    query=query.toLowerCase();
    setState(() {
      filteredItem=items.where((item) => item.toLowerCase().contains(query)).toList();
    });
    

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: TextField(
        onChanged: (value) {
          filterItem(value);
        },
        decoration: InputDecoration(hintText: "search item",border: InputBorder.none,suffixIcon: Icon(Icons.search)),
      ),
     ),
     body: ListView.builder(
      itemCount: filteredItem.length,
      itemBuilder: (context, index) {
       return ListTile(
        title: Text(filteredItem[index]),
       );
     },),
    );
  }
}
