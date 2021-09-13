import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/material.dart';



class CommunityDarkCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.only(top: kPaddingL),
          child: Icon(
            Icons.brush,
            color: kWhite,
            size: 32.0,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(bottom: kPaddingL),
          child: Icon(
            Icons.camera_alt,
            color: kWhite,
            size: 32.0,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: kPaddingL),
          child: Icon(
            Icons.straighten,
            color: kWhite,
            size: 32.0,
          ),
        ),
      ],
    );
  }
}
