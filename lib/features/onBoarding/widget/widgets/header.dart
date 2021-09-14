import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class Header extends StatelessWidget {
  final VoidCallback onSkip;

  const Header({
    @required this.onSkip,
  }) : assert(onSkip != null);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        // Logo(
        //   color: kWhite,
        //   size: 32.0,
        // ),
        GestureDetector(
          onTap: onSkip,
          child: Text(
            'Skip',
            style:
                Theme.of(context).textTheme.subtitle1.copyWith(color: kWhite),
          ),
        ),
      ],
    );
  }
}
