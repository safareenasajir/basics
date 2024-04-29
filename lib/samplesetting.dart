import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Settings",style: TextStyle(color: Colors.white),),
        leading: const Icon(Icons.arrow_back,color: Colors.white,),
      ),
      body:const SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("About phone"),
            ),
            ListTile(
              leading: Icon(Icons.system_update_sharp),
              title: Text("System apps updater"),
            ),
            ListTile(
              leading: Icon(Icons.security_sharp),
              title: Text("Security status"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.sim_card),
              title: Text("SIM card"),
            ),
            ListTile(
              leading: Icon(Icons.bluetooth),
              title: Text("Blutooth"),
            ),ListTile(
              leading: Icon(Icons.wifi),
              title: Text("Wi-Fi"),
            ),ListTile(
              leading: Icon(Icons.horizontal_split_outlined),
              title: Text("Portable Hotspot"),
            ),ListTile(
              leading: Icon(Icons.connecting_airports_outlined),
              title: Text("Connections & sharing"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("Lock screen"),
            ),
            ListTile(
              leading: Icon(Icons.light_mode),
              title: Text("Display"),
            ),ListTile(
              leading: Icon(Icons.vibration),
              title: Text("Sound and vibration"),
            ),ListTile(
              leading: Icon(Icons.notifications_none_rounded),
              title: Text("Notification"),
            ),
        
          ],
        ),
      )
    );
  }
}