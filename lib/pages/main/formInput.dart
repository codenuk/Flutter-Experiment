import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class FormInput extends StatefulWidget {
  const FormInput({Key? key}) : super(key: key);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
        // border: Border.all(color: Colors.deepPurpleAccent),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: PinPut(
              inputFormatters: [
                // FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
              ],
              textStyle: TextStyle(fontSize: 28, fontFamily: 'Kanit-Regular'),
              eachFieldWidth: 45.0,
              eachFieldHeight: 53.0,
              fieldsCount: 6,
              onSubmit: (String pin) => print(pin),
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: _pinPutDecoration.copyWith(
                borderRadius: BorderRadius.circular(10.0),
              ),
              selectedFieldDecoration: _pinPutDecoration,
              followingFieldDecoration: _pinPutDecoration.copyWith(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.fromLTRB(20, 5, 20, 5)),
                ),
                onPressed: () {},
                child: const Text(
                  'ลบตัวเลข',
                  style: TextStyle(
                      fontFamily: 'Kanit-Regular',
                      color: Color(0xFF7D6BAF),
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.fromLTRB(20, 5, 20, 5)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF33189D)),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'ค้นหาลอตเตอรี่',
                        style: TextStyle(
                            fontFamily: 'Kanit-Regular',
                            color: Color(0xFFFFFFFF),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF33189D)),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.fromLTRB(20, 0, 20, 0)),
                ),
                onPressed: () {},
                child: const Text(
                  'ทั้งหมด',
                  style: TextStyle(
                    fontFamily: 'Kanit-Bold',
                    color: Color(0xFFFFFFFF),
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.fromLTRB(20, 0, 20, 0)),
                ),
                onPressed: () {},
                child: const Text(
                  'ใบเดี่ยว',
                  style: TextStyle(
                    fontFamily: 'Kanit-Regular',
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.fromLTRB(20, 0, 20, 0)),
                ),
                onPressed: () {},
                child: const Text(
                  'เลขชุด',
                  style: TextStyle(
                    fontFamily: 'Kanit-Regular',
                    color: Color(0xFF000000),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
