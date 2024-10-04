import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tunes_player/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
 void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeView())));
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff1A013C) ,
      body: Center(child: Image.asset("assets/logo.webp"),),
    );
  }
}