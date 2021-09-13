import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'fade_slide_transition.dart';

class Header extends StatelessWidget {
  final Animation<double> animation;

  const Header({
    @required this.animation,
  }) : assert(animation != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kPaddingL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Logo(
          //   color: kBlue,
          //   size: 48.0,
          // ),
          // const SizedBox(height: kSpaceM),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: Text(
              'Welcome Back',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: kBlack, fontWeight: FontWeight.bold),
            ),
          ),
           SizedBox(height: kSpaceS),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 16.0,
            child: Text(
              'Sign in into your account',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: kBlack.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
