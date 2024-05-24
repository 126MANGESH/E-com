import 'package:ecom/const/applogo_widget.dart';
import 'package:ecom/const/bg_widget.dart';
import 'package:ecom/const/const.dart';
import 'package:ecom/const/custom_textfield.dart';
import 'package:ecom/pages/forgot_password.dart';
import 'package:ecom/const/home.dart';
import 'package:ecom/pages/sineup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
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
              "Log in to E-com".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextfield(hint: emailHint, title: email),
                  5.heightBox,
                  customTextfield(hint: passwordHint, title: passwors),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const Home(),
                            ),
                          );
                        },
                        child: const Text('Login'),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text('Forgot Password', style: TextStyle(color: redColor)),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const SignUpScreen(),
                        ),
                      );
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
