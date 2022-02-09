import 'package:flutter/material.dart';
import './formInput.dart';

class TabMain extends StatelessWidget {
  const TabMain({Key? key}) : super(key: key);

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
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/lottery.png')),
                const SizedBox(width: 8),
                Expanded(child: Image.asset('assets/images/lottery.png')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/lottery.png')),
                const SizedBox(width: 8),
                Expanded(child: Image.asset('assets/images/lottery.png')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/lottery.png')),
                const SizedBox(width: 8),
                Expanded(child: Image.asset('assets/images/lottery.png')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/lottery.png')),
                const SizedBox(width: 8),
                Expanded(child: Image.asset('assets/images/lottery.png')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/lottery.png')),
                const SizedBox(width: 8),
                Expanded(child: Image.asset('assets/images/lottery.png')),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/lottery.png')),
                const SizedBox(width: 8),
                Expanded(child: Image.asset('assets/images/lottery.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
