import 'package:fitness_app/core/utils/sizeConfig/sizeConfig.dart';
import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/material.dart';



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonType type;
  final bool showArrow;
  final Color color;
  final Color textColor;

  const CustomButton({
    Key key,
    @required this.text,
    this.onPressed,
    this.textColor = Colors.white,
    this.type = ButtonType.filled,
    this.showArrow = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == ButtonType.outlined) {
      return SizedBox(
        width: double.maxFinite,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'DMSans',
              color: textColor,
              fontWeight: FontWeight.w700,
              fontSize: 2.2 * SizeConfig.textMultiplier
            ),
          ),

          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color ?? kprimaryOrange),
            // borderSide: BorderSide(color: blue),
            padding: MaterialStateProperty.all( EdgeInsets.symmetric(vertical: 18),),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ))

          ),

          // highlightElevation: 0,
        ),
      );
    }
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'DMSans',
                fontWeight: FontWeight.bold,
                fontSize: 16,

              ),
            ),
            if (showArrow)
              Container(
                margin: EdgeInsets.only(left: 10),
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.keyboard_backspace_rounded,
                  ),
                ),
              ),
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 18),
          ),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}

enum ButtonType { outlined, filled }
