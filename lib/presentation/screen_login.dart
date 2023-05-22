import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(230, 5, 52, 76),
        image: DecorationImage(
            image: AssetImage('lib/assets/Untitled design.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 150, top: 110),
              child: Text(
                'Bus\nBuddy',
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 41, 78),
                    fontSize: 33,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                  
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_forward)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.normal
                            ),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.normal
                            ),
                          ))
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
