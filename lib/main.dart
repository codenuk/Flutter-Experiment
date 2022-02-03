// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'FoodMenu.dart';

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
  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", '500', 'assets/images/1.jpeg'),
    FoodMenu("กระเพราหมู", '80', 'assets/images/1.jpeg'),
    FoodMenu("ส้มตำ", '80', 'assets/images/2.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เลืกเมนูอาหาร'),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            FoodMenu food = menu[index];

            return ListTile(
              leading: Image.asset(food.img),
              title: Text(food.name, style: TextStyle(fontSize: 30),),
              subtitle: Text("ราคา "+food.price+" บาท"),
              onTap: () {
                print('คุณเลือกเมนูอาหารชื่อว่า'+ food.name);
              },
            );
          }),
    );
  }
}
