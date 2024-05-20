import 'package:flutter/material.dart';
import 'package:scc_attendance_system/widgets/primary_textfield.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 250, 72),
        title: Text(
          "CREATE ACCOUNT",
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
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromRGBO(89, 179, 89, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(5))),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                            color: Color.fromRGBO(89, 179, 89, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromRGBO(89, 179, 89, 1),
                                  width: 1),
                              borderRadius: BorderRadius.circular(5))),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "TEACHER",
                          style: TextStyle(
                            color: Color.fromRGBO(89, 179, 89, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Flex(
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
                      onPressed: () {},
                      child: Text(
                        "NEXT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "By signing up, you agree to our Terms of Service and Privacy Policy",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
