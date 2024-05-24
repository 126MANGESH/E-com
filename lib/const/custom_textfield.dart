

import 'package:ecom/const/const.dart';
import 'package:flutter/material.dart';

Widget customTextfield({String? title, String? hint, controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color
      (redColor).fontFamily
      (semibold).size(16).make(),
      5.heightBox,
       TextField(
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,

          ),
          hintText:hint ,

          
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: redColor))

        ),
      )

      
    ],
  );
}
