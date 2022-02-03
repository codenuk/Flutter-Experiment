// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ExchangeRate.dart';

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
  ExchangeRate? _dataFromAPI;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExchangeRate();
  }

  Future<ExchangeRate?> getExchangeRate() async {
    var url = "https://api.coindesk.com/v1/bpi/currentprice.json";
    var response = await http.get(Uri.parse(url));
    _dataFromAPI = exchangeRateFromJson(response.body);
    return _dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'อัตราการแลกเปลี่ยนสกุลเงิน',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: getExchangeRate(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          // ดึงข้อมูลจาก getExchangeRate มาครบ
          if (snapshot.connectionState == ConnectionState.done) {
            var res = snapshot.data;
            return ListView(
              children: [
                ListTile(
                  title: Text(res.chartName),
                ),
              ],
            );
          }
          return LinearProgressIndicator();
        },
      ),
    );
  }
}
