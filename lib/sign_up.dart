import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
        body: Column(
          children: [
            SizedBox(height: 108.0,),
            Center(
              child: Text("Members",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.2,
                  color: Color(0xFF3E4958),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("Sign up",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.2,
                  color: Color(0xFF3E4958),
                ),
              ),
            ),
            SizedBox(height: 31,),
            Center(
              child: Image.asset("assets/logo.png"),


            ),

          ],
        ),
        );
  }
}
