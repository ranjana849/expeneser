import 'dart:async';

import 'package:flutter/material.dart';

import 'SinginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => SingInPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
           children: [Container(
             decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [Colors.teal.shade100,Colors.teal],
           begin: Alignment.bottomRight,
          end: Alignment.topLeft,
         )),
        ),
         Container(
           alignment: Alignment.center,
           child: Text('EXPENSES APP',style:
           TextStyle(fontSize: 34,
           fontWeight: FontWeight.w900,
             color: Colors.white),)
    ,
    )
    ,
    ]
        ) ,
    );
  }
}

