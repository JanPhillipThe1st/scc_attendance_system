import 'package:flutter/material.dart';
import 'package:scc_attendance_system/screens/biometric.dart';
import 'package:scc_attendance_system/widgets/primary_textfield.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 250, 72),
        title: Text(
          "SIGN IN",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 113, 250, 72),
            Color.fromARGB(255, 241, 255, 50)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
            Container(
              height: 60,
              child: PrimaryTextField(
                controller: TextEditingController(),
                hintText: "Username or Email",
              ),
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 60,
              child: PrimaryTextField(
                controller: TextEditingController(),
                hintText: "Password",
                isPassword: true,
              ),
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            Expanded(
              flex: 5,
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.start,
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 300,
                    decoration: ShapeDecoration(
                        color: Color.fromRGBO(89, 179, 89, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Biometric()));
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
