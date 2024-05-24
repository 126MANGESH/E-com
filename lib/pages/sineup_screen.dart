import 'package:ecom/const/applogo_widget.dart';
import 'package:ecom/const/bg_widget.dart';
import 'package:ecom/const/const.dart';
import 'package:ecom/const/custom_textfield.dart';
import 'package:ecom/const/home.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Home()));
                    },
                    child: const Text('Sign up', style: TextStyle(color: redColor)),
                  ),
                  11.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Image.asset('assets/icons/facebook_logo.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Image.asset('assets/icons/google_logo.png'),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Image.asset('assets/icons/apple_logo.png'),
                        ),
                      ),
                    ],
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
