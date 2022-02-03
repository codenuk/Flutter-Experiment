// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'MoneyBox.dart';

void main() {
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
      theme: ThemeData(primarySwatch: Colors.purple),
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
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("start initState");
  }

  @override
  Widget build(BuildContext context) {
    print("start build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'บัญชีของฉัน',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "ข้อความ ${number.toString()}",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
