import 'package:flutter/material.dart';
import 'package:sample_1/category.dart';
import 'package:sample_1/new_home.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {

List<Widget> routes= [
  const NewHome(),
  // const NewHome(),
  const Text("Blog"),
  const Catagory(),
  const Text("Cart"),
    const Text("Account"),


];
int selectedIndex=0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
          items:  const [BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.abc),label: "Blog"),
            BottomNavigationBarItem(icon:    Icon(Icons.auto_awesome_mosaic),label: "Catagory"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "Account")
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue,
          
          onTap: (index) {
            setState(() {
              selectedIndex=index;
            });
          },
          ),
    );
  }
}
