// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  print("hello");
  runApp(const MyApp());
}

// StatelessWidget -> ไม่สามารถเปลี่ยนแปลงค่าได้
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

// StatefulWidget -> สามารถเปลี่ยนแปลงค่า state ได้ จะมีการ setState
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; // สร้าง state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: Center(
        // child: Text(
        //   'hello home',
        //   style: TextStyle(
        //     fontSize: 30,
        //     color: Colors.blue
        //   ),
        // ),
        // child: Image(
        //     image: NetworkImage(
        //         "https://i.picsum.photos/id/202/200/300.jpg?hmac=KWOdj8XRnO9x8h_I9rIbscSAhD1x-TwkSPPYjWLN2sI")),
        child: ListView(
          children: getData(20),
        ),
      ),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text("เมนูที่ ${i + 1}", style: TextStyle(fontSize: 25)),
        subtitle: Text('หัวข้อย่อที ${i + 1}', style: TextStyle(fontSize: 18)),
      );
      data.add(menu);
    }
    return data;
  }
}
