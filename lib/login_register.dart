import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject/home.dart';
import 'package:miniproject/main.dart';
import 'package:page_transition/page_transition.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextStyle heading1 = GoogleFonts.kanit(
      fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
  TextStyle Chike = GoogleFonts.kanit(
      decoration: TextDecoration.underline,
      decorationThickness: 2,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white);
  TextStyle Input = GoogleFonts.kanit(color: Colors.white);
  TextStyle password = GoogleFonts.kanit(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 8, 104, 159),
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Welcome back',
                  style: heading1,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'User name',
                          labelStyle: Input,
                          contentPadding: EdgeInsets.all(20),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 350,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'password',
                          labelStyle: Input,
                          contentPadding: EdgeInsets.all(20),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.white,width: 2,)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forget password?',
                      style: Chike,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: home()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                          onPrimary: Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have account yet?',
                          style: GoogleFonts.kanit(color: Colors.white, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: register()));
                            },
                            child: Text(
                              'Sign up',
                              style: Chike,
                            )),
                        Text(
                          'now!',
                          style: GoogleFonts.kanit(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  TextStyle heading1 = GoogleFonts.kanit(
      fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
  TextStyle Chike = GoogleFonts.kanit(
      decoration: TextDecoration.underline,
      decorationThickness: 2,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white);
  TextStyle Input = GoogleFonts.kanit(color: Colors.white);
  TextStyle password = GoogleFonts.kanit(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 8, 104, 159),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              padding: EdgeInsets.all(10),
              child: Text(
                'Create Account',
                style: heading1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                 Center(
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: Input,
                        contentPadding: EdgeInsets.all(20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'User name',
                        labelStyle: Input,
                        contentPadding: EdgeInsets.all(20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'password',
                        labelStyle: Input,
                        contentPadding: EdgeInsets.all(20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.white,width: 2,)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
               
            
                Center(
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: login()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        onPrimary: Color.fromARGB(255, 0, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: login()));
                          },
                          child: Text(
                            'Back to login.',
                            style: Chike,
                          )),
                      
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}