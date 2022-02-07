import 'package:flutter/material.dart';
import './tabMain.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
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
