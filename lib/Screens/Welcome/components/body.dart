import 'package:flutter/material.dart';
import 'package:project_uts/Screens/Login/login_screen.dart';
import 'package:project_uts/Screens/Signup/signup_screen.dart';
import 'package:project_uts/Screens/Welcome/components/background.dart';
import 'package:project_uts/components/rounded_button.dart';
import 'package:project_uts/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "TEDC Mobile Apps",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            // Image.asset(
            //   "/images/tedc.png",
            //   height: size.height * 0.2)
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset("/icons/chat.svg", height: size.height * 0.45),
            Image.asset("assets/images/tedc.png", height: size.height * 0.3),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Sign Up",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
