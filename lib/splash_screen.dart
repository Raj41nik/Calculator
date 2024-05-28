import 'dart:async';

import 'package:calculator/start_intro_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Intro()));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffe2ebf0),
        child: Center(child: Text(
          'CALCULATOR',
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Color(0xffa1c4fd)),)),
      ),
    );
  }
}