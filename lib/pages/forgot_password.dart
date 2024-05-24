import 'package:ecom/const/applogo_widget.dart';
import 'package:ecom/const/bg_widget.dart';
import 'package:ecom/const/const.dart';
import 'package:ecom/const/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.01).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Welcome to E-com".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextfield(hint: emailHint, title: email),
                  5.heightBox,
                  customTextfield(hint: passwordHint, title: newpassword),
                  5.heightBox,
                  const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontFamily: semibold,
                        color: textfieldGrey,
                      ),
                      hintText: 'Confirm Password',
                      isDense: true,
                      fillColor: lightGrey,
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: redColor)),
                    ),
                  ),
                  20.heightBox,
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Create Password',
                      style: TextStyle(color: redColor),
                    ),
                  ),
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).make(),
            ],
          ),
        ),
      ),
    );
  }
}
