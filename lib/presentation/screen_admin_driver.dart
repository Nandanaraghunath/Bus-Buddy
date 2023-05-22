import 'package:flutter/material.dart';

class AddDriverPage extends StatelessWidget {
  final TextEditingController busNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 14, 41, 78), // Set the app bar color to green
        ),
        scaffoldBackgroundColor: Colors.white, // Set the screen background color to white
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Add Driver'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: busNumberController,
                decoration: InputDecoration(
                  labelText: 'Driver Name',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: busNumberController,
                decoration: InputDecoration(
                  labelText: 'Bus Number',
                ),
              ),
               SizedBox(height: 16.0),
               TextField(
                controller: busNumberController,
                decoration: InputDecoration(
                  labelText: 'Route Name',
                ),
              ),
              
              ElevatedButton(
                onPressed: () {
                  // Add bus logic here
                  String busNumber = busNumberController.text;
                  print('Bus Number: $busNumber');
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}