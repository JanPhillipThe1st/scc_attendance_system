import 'package:flutter/material.dart';
import 'package:scc_attendance_system/fingerprint_verified.dart';

class Biometric extends StatefulWidget {
  const Biometric({Key? key}) : super(key: key);

  @override
  _BiometricState createState() => _BiometricState();
}

class _BiometricState extends State<Biometric> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 250, 72),
        title: Text(
          "BIOMETRIC VERIFICATION",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 113, 250, 72),
            Color.fromARGB(255, 241, 255, 50)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Flex(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 300,
              decoration: ShapeDecoration(
                  color: Color.fromRGBO(89, 179, 89, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2))),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FingerprintVerified()));
                },
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.fingerprint,
                      color: Colors.white,
                      size: 30,
                      weight: 10,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(
                      "FINGERPRINT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 300,
              decoration: ShapeDecoration(
                  color: Color.fromRGBO(89, 179, 89, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2))),
              child: MaterialButton(
                onPressed: () {},
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.face,
                      color: Colors.white,
                      size: 30,
                      weight: 10,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(
                      "FACE ID",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
