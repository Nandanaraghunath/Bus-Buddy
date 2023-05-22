import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () { 
    Navigator.pushNamed(context, 'login');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 223, 244, 255),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Expanded(
                flex: 2,
                child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70.0,
                      backgroundImage: AssetImage('lib/assets/logo.png'),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text('Bus Buddy',style: TextStyle(color: Color.fromARGB(255, 14, 41, 78),
                    fontSize: 24,
                    fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              )),
              Expanded(flex: 1,  
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Color.fromARGB(255, 14, 41, 78),
                    strokeWidth: 6,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('Your daily\nBus Buddy', style: TextStyle(color: Color.fromARGB(255, 14, 41, 78),fontSize: 12,fontWeight: FontWeight.bold),)
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}