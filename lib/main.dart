// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      debugShowCheckedModeBanner: false,
      home: const SearchLotteryPage(),
      theme: ThemeData(
        primarySwatch: white,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class SearchLotteryPage extends StatefulWidget {
  const SearchLotteryPage({Key? key}) : super(key: key);

  @override
  _SearchLotteryPageState createState() => _SearchLotteryPageState();
}

class _SearchLotteryPageState extends State<SearchLotteryPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0, // Remove Distance Text Title
        elevation: 0, // Remove Box Shadow
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color(0xFFFFFFFF),
          labelColor: const Color(0xFFDC49BC),
          labelStyle: const TextStyle(
            fontSize: 18,
            fontFamily: 'Kanit-Bold',
          ),
          unselectedLabelColor: const Color(0xFF000000),
          unselectedLabelStyle: const TextStyle(
            fontSize: 16,
            fontFamily: 'Kanit-Regular',
          ),
          tabs: const <Widget>[
            Tab(
              text: "ข้อมูลผู้ขาย",
            ),
            Tab(
              text: "LOTTEE",
            ),
            Tab(
              text: "เข้าสู่ระบบ",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Text("It's could here"),
          TabMain(),
          Text("It's sunny here"),
        ],
      ),
    );
  }
}

class TabMain extends StatelessWidget {
  const TabMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset('assets/images/banner.png'),
        ],
      ),
    );
  }
}
