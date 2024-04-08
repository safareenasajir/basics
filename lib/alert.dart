import 'package:flutter/material.dart';

class Alertbox extends StatelessWidget {
  const Alertbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Box"),
        backgroundColor: Colors.blue,
        actions: [IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_outlined))],
      ),
      body: Center(
        child: TextButton(
            onPressed: () => showDialog(
                  context: context,
                  builder: (context) =>  AlertDialog(
                    title: const Text("Alert Box title"),
                    content: const Text("This is alert box"),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: const Text("OK")),
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: const Text("Cancel"))
                    ],
                  ),
                ),
            child: const Text("alert box")),
      ),
    );
  }
}
