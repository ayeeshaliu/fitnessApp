import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 108.0,),
            Center(
              child: Text("Members",
                style: TextStyle(
                  fontFamily:"Inter",
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
                  fontFamily:"Inter",
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
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 45.0
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("EMAIL",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.2,
                      color: Color(0xFF3E4958),
                    ) ,
                  ),
                    SizedBox(height: 10.0,),
                    TextField(
                      cursorHeight: 25,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF7F8F9), width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                  ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 45.0
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("PASSWORD",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.2,
                      color: Color(0xFF3E4958),
                    ) ,
                  ),
                  SizedBox(height: 10.0,),
                  Stack(
                    children: [
                      TextField(
                        cursorHeight: 25,
                        textDirection: TextDirection.ltr,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFF7F8F9), width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          ),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 45.0
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CONFIRM PASSWORD",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0.2,
                      color: Color(0xFF3E4958),
                    ) ,
                  ),
                  SizedBox(height: 10.0,),
                  TextField(
                    cursorHeight: 25,
                    textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF7F8F9), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 155,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 45.0
            ),
              child: InkWell(
                child: Column(
                  children: [
                    Container(
                      width: 303,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF8000),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center ,
                        children: [
                          SizedBox(height: 18,),
                          Text("Sign Up",
                            style: TextStyle(
                              fontFamily: "Inter",
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                letterSpacing: 0.2,
                                color: Color(0xFFFFFFFF)

                            ),
                          ),
                        ],
                      ),
                    ),

                  ],

                ),
                onTap: () {},
              ),
            ),
          ],
        ),
        );
  }
}
