import 'package:flutter/material.dart';
import './localWigets/tabMain.dart';
import '../../widgets/navtopBar.dart';

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
      appBar: NavtopBar(_tabController),
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
