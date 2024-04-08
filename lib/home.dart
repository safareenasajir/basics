import 'package:flutter/material.dart';
import 'package:sample_1/alert.dart';
import 'package:sample_1/listview.dart';
import 'package:sample_1/listviewsep.dart';
import 'package:sample_1/navigation.dart';
import 'package:sample_1/stack.dart';
import 'package:sample_1/toasting.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter basics"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Listtask(),
                  ));
                },
                child: const Text("Listview")),
            ElevatedButton(
                onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Listviewsep() ,));
                },
                child: const Text("Listviewseperated")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Toasting(),
                  ));
                },
                child: const Text("Toast")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Stacktask(),
                  ));
                },
                child: const Text("Stack")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Navigationtask(),
                  ));
                },
                child: const Text("Navigation")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Alertbox(),));
                }, child: const Text("Alert")),
          ],
        ),
      ),
    );
  }
}
