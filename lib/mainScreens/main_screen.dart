import 'package:flutter/material.dart';
import 'package:swifttra/authentication/login_screen.dart';
import 'package:swifttra/global/global.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Logout"),
        onPressed: () {
          fAuth.signOut();
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => LoginScreen()));
        },
      ),
    );
  }
}
