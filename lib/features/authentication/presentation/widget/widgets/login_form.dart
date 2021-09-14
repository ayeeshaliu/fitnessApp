import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:fitness_app/core/utils/widgets/custom_button.dart';
import 'package:fitness_app/core/utils/widgets/custom_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'custom_button.dart';


import 'custom_button.dart';
import 'custom_input_field.dart';
import 'fade_slide_transition.dart';

class LoginForm extends StatelessWidget {
  final Animation<double> animation;

  const LoginForm({
    @required this.animation,
  }) : assert(animation != null);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
     var space = height > 650 ? kSpaceM : kSpaceS;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 3 * space,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/logo.png", ),
            )
          ),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: CustomTextField(
              type: FieldType.email,
              header: "Email",
              hint: "ajao@xyz.com",
            ),
          ),

          FadeSlideTransition(
            animation: animation,
            additionalOffset: space,
            child: CustomTextField(
              type: FieldType.password,
              header: "Password",
              hint: "*********",
            ),
          ),

          SizedBox(height: space),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 4 * space,
            child: CustomButton(
              type:  ButtonType.outlined,
              color: kprimaryOrange,
              textColor: Colors.white,
              text: "Login",
            ),

            // CustomButton(
            //   color: kBlack,
            //   textColor: kWhite,
            //   text: 'Create a Bubble Account',
            //   onPressed: () {},
            // ),
          ),


        ],
      ),
    );
  }
}
