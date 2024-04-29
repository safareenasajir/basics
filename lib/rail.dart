import 'package:flutter/material.dart';

class Rail extends StatefulWidget {
  const Rail({super.key});

  @override
  State<Rail> createState() => _RailState();
}

class _RailState extends State<Rail> {
  int _selectedindex=0;
  double groupAlignment=-1.0;
  NavigationRailLabelType labelType=NavigationRailLabelType.all;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          NavigationRail(
            
            groupAlignment: groupAlignment,
            onDestinationSelected: (index) {
              setState(() {
                _selectedindex=index;
              });
            },
            labelType: labelType,
            destinations: const [
            NavigationRailDestination(icon: Icon(Icons.abc), label: Text("first")),
           NavigationRailDestination(icon: Icon(Icons.ac_unit_sharp), label: Text("second")),
          NavigationRailDestination(icon: Icon(Icons.access_alarms_outlined), label: Text("Third")),




          ], selectedIndex: _selectedindex)
        ],
        
      ),
      
    );
  }
}