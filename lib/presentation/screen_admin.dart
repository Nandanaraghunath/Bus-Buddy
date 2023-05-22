import 'package:bus_app/presentation/screen_admin_bus.dart';
import 'package:bus_app/presentation/screen_admin_driver.dart';
import 'package:bus_app/presentation/screen_admin_route.dart';
import 'package:bus_app/presentation/screen_admin_student.dart';
import 'package:bus_app/presentation/screen_login.dart';
import 'package:flutter/material.dart';


class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 41, 78),
        title: Text('Admin Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('admin'),
              accountEmail: Text('admin@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(
                    188, 14, 46, 90), // Change the color to your preference
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sign Out'),
              onTap: () {
                // Handle sign out button tap
                // ...
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return MyLogin();
                }));
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Color.fromARGB(
            255, 255, 255, 255), // Change the color to your preference
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle bus location button tap
                  // ...
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return AddBusPage();
                  }));
                },
                child: Text(
                  'Add Bus',
                  style: TextStyle(
                      color: Colors
                          .black), // Change the text color to your preference
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .orange, // Change the button color to your preference
                  padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20), // Adjust the button padding
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10)),
                     // Adjust the button shape
                ),
              
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle fee payment button tap
                  // ...
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return (AddRoutePage());
                  }));
                },
                child: Text(
                  'Add Route',
                  style: TextStyle(
                      color: Colors
                          .white), // Change the text color to your preference
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .green, // Change the button color to your preference
                  padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20), // Adjust the button padding
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10)), // Adjust the button shape
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle leave marking button tap
                  // ...
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return (AddDriverPage());
                  }));
                },
                child: Text(
                  'Add Driver',
                  style: TextStyle(
                      color: Colors
                          .black), // Change the text color to your preference
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.red, // Change the button color to your preference
                  padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20), // Adjust the button padding
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10)), // Adjust the button shape
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle leave marking button tap
                  // ...
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return (AddStudentPage());
                  }));
               
                },
                child: Text(
                  'Add Student',
                  style: TextStyle(
                      color: Colors
                          .black), // Change the text color to your preference
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.pink, // Change the button color to your preference
                  padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20), // Adjust the button padding
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10)), // Adjust the button shape
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
