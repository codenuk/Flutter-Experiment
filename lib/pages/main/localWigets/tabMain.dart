import 'package:flutter/material.dart';
import './formInput.dart';
import '../../../models/lottery.dart';

class TabMain extends StatefulWidget {
  const TabMain({Key? key}) : super(key: key);

  @override
  _TabMainState createState() => _TabMainState();
}

class _TabMainState extends State<TabMain> {
  List<LotteryList> menu = [
    LotteryList("1", 'assets/images/lottery.png'),
    LotteryList("2", 'assets/images/lottery.png'),
    LotteryList("3", 'assets/images/lottery.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('assets/images/banner.png'),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1.0, 0.0),
                    colors: <Color>[
                      Color(0xFFD4D8F5),
                      Color(0xFFF4D7EE),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    'กรอกเลขลอตเตอรี่ที่ต้องการค้นหา',
                    style: TextStyle(fontSize: 18, fontFamily: 'Kanit-Regular'),
                  ),
                  FormInput(),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: 5.0,
              spacing: 5.0,
              children: [
                for (int i = 0; i < menu.length; i++) ...[
                  Image.asset(
                    menu[i].imgUrl,
                    width: MediaQuery.of(context).size.width * 0.47,
                  ),
                ]
              ],
            )
          ],
        ),
      ),
    );
  }
}
