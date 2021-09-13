import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/material.dart';


class TextColumn extends StatelessWidget {
  final String title;
  final String text;

  const TextColumn({
    @required this.title,
    @required this.text,
  })  : assert(title != null),
        assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: kWhite, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
         SizedBox(height: kSpaceS),
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(color: kWhite),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
