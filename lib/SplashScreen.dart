import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:untitled13/RagistrationPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context)=>RegistrationPage()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      body: Center(
        child: Column(
          children: [

            Image.asset('assets/bilai.jpg',height: 350,width: 250,),

            Spacer(),
            Text("Welcome to my app..."),
            Spacer(),

            SpinKitSpinningLines(color: Colors.green),



          ],
        ),
      ),
    );
  }
}
