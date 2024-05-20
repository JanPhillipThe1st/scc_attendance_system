import 'package:flutter/material.dart';
import 'package:checkmark/checkmark.dart';

class FingerprintVerified extends StatefulWidget {
  const FingerprintVerified({Key? key}) : super(key: key);

  @override
  _FingerprintVerifiedState createState() => _FingerprintVerifiedState();
}

bool isChecked = false;

class _FingerprintVerifiedState extends State<FingerprintVerified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(color: Colors.white),
        child: Flex(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: FutureBuilder<bool>(
                builder: (context, snapshot) {
                  return CheckMark(
                    active: snapshot.data ?? false,
                    activeColor: Color.fromARGB(255, 67, 192, 29),
                    curve: Curves.decelerate,
                    duration: const Duration(milliseconds: 500),
                  );
                },
                future: Future.delayed(Duration(seconds: 1), () => true),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            TweenAnimationBuilder(
              builder: (context, value, widget) {
                if (value >= 2) {
                  return Text(
                    "FINGERPRINT VERIFIED!\nWELCOME!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(49, 136, 22, value - 2),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  );
                } else {
                  return Text("");
                }
              },
              tween: Tween<double>(begin: 0, end: 3),
              duration: Duration(seconds: 3),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            TweenAnimationBuilder(
              builder: (context, value, widget) {
                if (value >= 3) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 300,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Color.fromRGBO(49, 136, 22, value - 3)),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "PROCEED",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ),
                  );
                } else {
                  return Text("");
                }
              },
              tween: Tween<double>(begin: 0, end: 4),
              duration: Duration(seconds: 4),
            ),
          ],
        ),
      ),
    );
  }
}
