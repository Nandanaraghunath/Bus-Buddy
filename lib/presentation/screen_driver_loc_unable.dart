
import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';


class LocationUnable extends StatelessWidget {
  const LocationUnable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 41, 78),
        title: Text('Driver Page'),
      ),
      
      body: Container(
        child: Column(children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 50, left: 25),
              child: GradientSlideToAct(
                height: 60,
                text: 'Slide To Unable Location',
                width: 350,
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
        ]),
        
        
      ),
    );
  }
}
