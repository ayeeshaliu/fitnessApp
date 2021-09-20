import 'package:fitness_app/Status.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/TextStyle.dart';
class Trainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 0, left: 38),
                    width: 303,
                    height: 55,
                    child: MyText(
                      title: "Bookings",
                      size: 48,

                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 0, top: 0),
                  child: Image.asset("assets/carbon.png",
                    width: 28,
                    height: 28,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 11,),
              Container(
                padding: EdgeInsets.only(left: 25),
                width: 390,
                height: 20,
                child: MyText(
                  title: "Today",
                  size: 18,
                ),
              ),
          SizedBox(height: 5,),
          Status(),
          SizedBox(height: 15,),
          Status(),
          SizedBox(height: 11,),
          Container(
            padding: EdgeInsets.only(left: 25),
            width: 390,
            height: 20,
            child: MyText(
              title: "This Week",
              size: 18,
            ),
          ),
          SizedBox(height: 11,),
          Status(),
          SizedBox(height: 11,),
          Status(),
          SizedBox(height: 11,),
          Status(),

        ],
      ),
    );
  }
}
