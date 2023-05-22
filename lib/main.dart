import 'package:firebase_core/firebase_core.dart';
import 'package:bus_app/presentation/screen_admin.dart';
import 'package:bus_app/presentation/screen_driver.dart';
import 'package:bus_app/presentation/screen_login.dart';
import 'package:bus_app/presentation/screen_splash.dart';
import 'package:bus_app/presentation/screen_student.dart';
import 'package:flutter/material.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized;
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'admin',
      home: MyLogin(),
      routes: {
        'splash': (context) => SplashScreen(),
        'login': (context) => MyLogin(),
        'student':(context) => StudentPage(),
        'driver':(context)=> DriverPage(),
        'admin':(context)=>AdminPage()
      },
    );
  }
}
