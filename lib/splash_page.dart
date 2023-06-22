import 'dart:async';

import 'package:flutter/material.dart';
import 'package:storylandia/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3500), () {
      Navigator.push(context, 
      MaterialPageRoute(builder: (ctx) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/girl.png", width: 200),
            SizedBox(height: 32),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 1.5,
              ),
            )
          ],
      
        ),
      ),
    );
  }
}