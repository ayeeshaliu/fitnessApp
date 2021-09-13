


import 'package:another_flushbar/flushbar.dart';
import 'package:fitness_app/core/utils/constants/textStyleConstants.dart';
import 'package:flutter/material.dart';


kShowSnackBar(BuildContext ctx, String msg, {position, color, textColor, title}) {
  return Flushbar(
    flushbarPosition: position ??  FlushbarPosition.BOTTOM,
    backgroundColor: color ??Colors.white,

    titleColor: color,
    icon: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Icon(
        Icons.info,
        size: 28,
        color: Color(0xffFFB113),
      ),
    ),
    messageText: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(msg,      style: kBold500.copyWith(
            color: color,

            fontSize: 15,
          ),),
          Text(
            title ?? "",
            // textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    ),

    leftBarIndicatorColor: Color(0xffFFB113),
    duration: Duration(seconds: 3),
  )..show(ctx);
}
