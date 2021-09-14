import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/material.dart';



class WorkDarkCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.person_pin,
              color: kWhite,
              size: 32.0,
            ),
          ],
        ),
         SizedBox(height: kSpaceM),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.person,
              color: kWhite,
              size: 32.0,
            ),
            Icon(
              Icons.group,
              color: kWhite,
              size: 32.0,
            ),
            Icon(
              Icons.insert_emoticon,
              color: kWhite,
              size: 32.0,
            ),
          ],
        ),
      ],
    );
  }
}
