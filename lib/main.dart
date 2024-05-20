import 'package:flutter/material.dart';
import 'package:scc_attendance_system/screens/sign_in.dart';
import 'package:scc_attendance_system/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 140, 207, 120)),
          useMaterial3: true,
          fontFamily: "OpenSans"),
      home: const MyHomePage(title: 'SCC Attendance Management System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 113, 250, 72),
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w300),
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
            Expanded(
              child: Image.asset("assets/images/newlogoscc1.png"),
              flex: 5,
            ),
            Expanded(
              flex: 1,
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    decoration: ShapeDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signin()));
                      },
                      child: Text("SIGN IN"),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Container(
                    width: 150,
                    decoration: ShapeDecoration(
                        color: Color.fromRGBO(89, 179, 89, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        "CREATE ACCOUNT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
