import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Leave Marking'),
        backgroundColor: Color.fromARGB(255, 14, 41, 78),


      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Todays's Attendance",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 3, top: 25),
                child: Text(
                  '08:16',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 3, top: 3),
                child: Text(
                  '19 May 2023',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  child: GradientSlideToAct(
                    height: 60,
                    text: 'Slide To Mark Leave',
                    width: 400,
                    textStyle: TextStyle(color: Colors.white, fontSize: 15),
                    backgroundColor: Color(0Xff172663),
                    onSubmit: () {
                     
                    },
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff0da6c2),
                          Color(0xff0E39C6),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
