import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts/Screens/Login/login_screen.dart';
import 'package:project_uts/Screens/Signup/components/background.dart';
import 'package:project_uts/Screens/Signup/components/or_divider.dart';
import 'package:project_uts/Screens/Signup/components/social_icon.dart';
import 'package:project_uts/components/already_have_an_account_check.dart';
import 'package:project_uts/components/rounded_button.dart';
import 'package:project_uts/components/rounded_input_field.dart';
import 'package:project_uts/components/rounded_password_field.dart';
import 'package:project_uts/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "SGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(hintText: "Masukkan Email", onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(text: "SIGNUP", press: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAndAccountCheck(
              login: false,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "/icons/facebook.svg",
                  press: (){},
              ),
                SocialIcon(
                  iconSrc: "/icons/twitter.svg",
                  press: (){},
              ),
                SocialIcon(
                  iconSrc: "/icons/google-plus.svg",
                  press: (){},
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

