import 'package:ecom/const/const.dart';
import 'package:flutter/material.dart';

Widget appLogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .color(Colors.white)
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
