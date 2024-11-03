import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, "home"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body of Page
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff6909A0),
                Color(0xff370554),
              ]),
        ),

        // Container of page
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                // Start Logo
                Container(
                  width: 130,
                  height: 130,
                  // margin: const EdgeInsets.only(top: 110),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Mdeastk_Logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Space
                const SizedBox(
                  height: 10,
                ),

                // App Name
                Column(
                  children: const [
                    Text(
                      "مدرستك",
                      style: TextStyle(fontSize: 40, color: Color(0xffFFE500)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Mdrastk.com",
                        style: TextStyle(
                            fontSize: 30,
                            //
                            height: -0.001,
                            color: Color(0xffFFE500)))
                  ],
                ),
              ],
            ),

            // Space
            // const SizedBox(
            //   height: 80,
            // ),

            // Small Description for App
            const Text(
              "مدرستك هو أول تطبيق إلكتروني  يمثل \nخدمة تعليمية متكاملة للطالب و \n موازية للمدرسة الحقيقية",
              style: TextStyle(
                  fontSize: 18, height: 1.7, color: Color(0xffFFFFFF)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
