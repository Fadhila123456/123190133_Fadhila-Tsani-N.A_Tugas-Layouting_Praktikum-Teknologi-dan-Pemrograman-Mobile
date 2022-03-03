import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }

  Widget LoginPage() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login Screen"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150, bottom: 10),
              child: FlutterLogo(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Email",
                    contentPadding: const EdgeInsets.all(8)),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: 35, right: 40, left: 40, top: 15),
              child: TextField(
                enabled: true,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.blue)),
                    hintText: "Password",
                    contentPadding: const EdgeInsets.all(8)),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Log In"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: TextButton(
                onPressed: () {},
                child: const Text("Forgot Password?"),
                style: TextButton.styleFrom(
                  primary: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
