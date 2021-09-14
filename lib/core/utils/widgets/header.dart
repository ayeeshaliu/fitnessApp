

import 'dart:io';

import 'package:fitness_app/core/utils/navigation/navigator.dart';
import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final VoidCallback preferredActionOnBackPressed;
  final Widget suffix;
  final bool showPrefix;
  const Header({
    Key key,
    this.text,
    this.showPrefix = true,
    this.textStyle,
    this.suffix,

    this.preferredActionOnBackPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
     showPrefix ?    IconButton(
          icon: Platform.isIOS ?  Icon(
            Icons.arrow_back_ios_rounded,
            size: 18,
            color: kTitleTextfieldColor,
          ) : Icon(Icons.arrow_back_sharp,
            size: 18,
            color: kTitleTextfieldColor,),
          onPressed: () {
            preferredActionOnBackPressed != null
                ? preferredActionOnBackPressed()
                : pop(context);


          },
        ) : Container(),
        Spacer(),
        Text(
          text,
          style: textStyle ??  TextStyle(
            color: kTitleTextfieldColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Spacer(),
        suffix ?? Container()
        // Opacity(
        //   opacity: 0,
        //   child: IconButton(
        //     icon: Icon(
        //       Icons.arrow_back_ios,
        //       size: 18,
        //     ),
        //     onPressed: null,
        //   ),
        // ),
      ],
    );
  }
}
