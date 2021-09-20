import 'package:fitness_app/TextStyle.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: 360,
      height: 120,
      child: Card(
        color: Color(0xFFFFFFFF),
        elevation: 5,
        shadowColor: Color(0xFFFFFFFF),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(padding: EdgeInsets.only(top: 8,right: 12),
               child: MyText(
                 title: "PENDING",
                 size: 13,
                 color: Color(0xFF818181),
               ),
               ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 0, left: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/face.png"),
                    radius: 30,
                  ),
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 200.14,top: 2),
                      child: MyText(
                        title: "Jason",
                        size: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 14.14,top: 5),
                        child: MyText(
                          title: "Cardio",
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10,left: 200.95,top: 5),
                          child: Image.asset("assets/shape.png"),
                        ),
                      ],
                    ),
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(right: 5.14, top: 0),
                        child: Image.asset("assets/Star.png"),
                        ),
                        Padding(padding: EdgeInsets.only(right: 210.95, top: 2),
                        child: MyText(
                          title: "4.8",
                          fontWeight: FontWeight.w400,
                        ),),
                      ],
                    ),
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20,right:150, top: 9 ),
                          child: MyText(
                            title: "ACCEPT",
                            size: 12,
                            color: Color(0xFF2F8706),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left:7,right: 0, top: 9),
                        child: MyText(
                          title: "REJECT",
                          size: 12,
                          color: Color(0xFFEB5757),
                          
                        ),),
                      ],
                    )

                  ],
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
