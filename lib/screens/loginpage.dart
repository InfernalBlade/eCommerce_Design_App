import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "HELLO THERE!",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 21),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Please sign in to continue!",
                  style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.email_outlined),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                labelStyle: TextStyle(
                                    fontFamily: "Poppins", fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                labelText: 'Email',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 40.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.lock_outline),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                labelStyle: TextStyle(
                                    fontFamily: "Poppins", fontSize: 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                labelText: 'Password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Go Back"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*Text(
                  "Email",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: Color(0xFF122D42),
                  ),
                ),
 */