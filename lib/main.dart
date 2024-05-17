import 'package:flutter/material.dart';
import 'package:sample_1/home.dart';
import 'package:sample_1/inkwell.dart';
import 'package:sample_1/music.dart';
import 'package:sample_1/music2.dart';
import 'package:sample_1/pages.dart';
import 'package:sample_1/popupmenu.dart';
import 'package:sample_1/pro1.dart';
import 'package:sample_1/product.dart';
import 'package:sample_1/rail.dart';
import 'package:sample_1/samplesetting.dart';
import 'package:sample_1/search.dart';
import 'package:sample_1/task1.dart';
import 'package:sample_1/task2.dart';
import 'package:sample_1/task3.dart';
import 'package:sample_1/task4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Task3(),
    );
  }
}


