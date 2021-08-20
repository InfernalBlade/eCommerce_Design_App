import 'package:flutter/material.dart';
import 'package:login_ui/screens/loginpage.dart';
import 'package:login_ui/screens/registerpage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF122D42).withOpacity(0.82),
                  Color(0xFF3DD2CC).withOpacity(0.82),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.2, 1]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    width: 180,
                    height: 160,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Text(
                    "Welcome to Dripping!",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 22,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                  Text(
                    "The perfect place to find your design!",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      color: Color(0xFFA5A5A5),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(288, 53),
                      primary: Color(0xFF122D42),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      "Register with Us",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w100,
                          letterSpacing: 1.5,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(288, 53),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Already a member? Login!",
                      style: TextStyle(
                          color: Color(0xFF122D42),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w100,
                          letterSpacing: 1.5,
                          fontSize: 15),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
