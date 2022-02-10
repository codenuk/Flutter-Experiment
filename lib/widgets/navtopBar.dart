import 'package:flutter/material.dart';

PreferredSizeWidget NavtopBar(TabController _tabController) {
  return AppBar(
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
  );
}
