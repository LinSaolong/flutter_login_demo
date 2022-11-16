import 'package:flutter/material.dart';
import 'package:flutter_login_demo/utils/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: size.height * 0.2,
            bottom: size.height * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Hello Please Login", style: TextStyle(fontSize: 30)),
            const SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {
                AuthService().signInWithGoogle();
              },
              child: const Text(
                "Google Login",
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                AuthService().signInWithFacebook();
              },
              child: const Text(
                "Facebook Login",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
