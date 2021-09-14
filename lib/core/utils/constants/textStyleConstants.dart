



import 'package:fitness_app/core/utils/sizeConfig/sizeConfig.dart';
import 'package:fitness_app/core/utils/styles/color_utils.dart';
import 'package:flutter/material.dart';
import 'dart:io';
const imagePath = "assets/images/";
const kBold700 = TextStyle(
    fontWeight: FontWeight.w700
);



const kBold500 = TextStyle(
  color: kTitleTextfieldColor,
    fontWeight: FontWeight.w500
);


const kBold400 = TextStyle(
    fontWeight: FontWeight.w400
);


Color getColor(int index, _processIndex ) {
  if (index == _processIndex) {
    return kTitleTextfieldColor;
  } else if (index < _processIndex) {
    return kTitleTextfieldColor;
  } else {
    return Colors.grey;
  }
}

Widget kAppBar(String label,  {bool showLead = true, bool cancel = false, showAction= false, VoidCallback onPress}  ) {
  return  AppBar(
    elevation: 0,
    leading: showLead ?  IconButton(icon: Icon(Platform.isIOS ?  Icons.arrow_back_ios : Icons.arrow_back_outlined,  color: Colors.black,),onPressed: showLead ?  onPress : null): Container(),
    backgroundColor: Colors.white,
    actions: [
    showAction ? IconButton(icon: Icon(cancel ? Icons.close: Icons.more_vert, color: Colors.black,),  onPressed: cancel ? onPress : null): Container()
    ],
    title: Text(label,style:  kBold700.copyWith(
        color: Colors.black,
        fontSize: 2.2 * SizeConfig.textMultiplier),),
  );
}

enum Pages{Order, Receiver, Review}