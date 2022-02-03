// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() async{
  print(await loginUser());
  print("ทำงานอื่นต่อไป");
}

Future <String> loginUser() async{
  var user = await getUserFromDatabase();
  return "ชื่อผู้ใช้ "+user;
}

Future <String> getUserFromDatabase() {
  return Future.delayed(Duration(seconds: 10), () => "supagorn");
}