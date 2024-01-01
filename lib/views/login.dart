import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simak/views/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(left: 20, bottom: 20, top: 58, right: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0x00f1f1f1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/logouk.png"),
                width: 103,
                height: 82,
              ),
              SizedBox(height: 50),
              Text(
                "Sistem Informasi Akademik",
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'poppins',
                    color: Color.fromARGB(255, 125, 125, 127),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Universitas Khairun",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 125, 125, 127)),
              ),
              SizedBox(height: 90),

              // Form Login

              // Username Form
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 219, 219, 219),
                  hintText: 'Masukan Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),

              // sizebox
              SizedBox(height: 12),
              // Password Form
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 219, 219, 219),
                  hintText: 'Masukan Username',
                  prefixIcon: Icon(Icons.password_sharp),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              SizedBox(
                height: 12,
              ),

              // button submit
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(57),
                    backgroundColor: Color.fromARGB(255, 51, 200, 129),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: () {
                  Get.off(HomePages());
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              // forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Lupa Password"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
