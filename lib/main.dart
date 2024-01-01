import 'package:flutter/material.dart';
import 'package:simak/views/login.dart';
import 'package:get/get.dart';

void main() => runApp(
      const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
