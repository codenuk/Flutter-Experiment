// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'MoneyBox.dart';

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
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MoneyBox(
              title: 'ยอดเงินคงเหลือ',
              amount: 10000,
              color: Colors.lightBlue,
              size: 100,
            ),
            SizedBox(height: 5,),
            MoneyBox(
              title: 'รายรับ',
              amount: 15000,
              color: Colors.green,
              size: 100,
            ),
            SizedBox(height: 5,),
            MoneyBox(
              title: 'รายจ่าย',
              amount: 5000,
              color: Colors.red,
              size: 100,
            )
          ],
        ),
      ),
    );
  }
}
