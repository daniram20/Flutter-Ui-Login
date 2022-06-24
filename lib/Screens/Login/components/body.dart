import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_uts/Screens/Login/components/background.dart';
import 'package:project_uts/Screens/Login/components/dialog_failed_login.dart';
import 'package:project_uts/Screens/Login/components/dialog_success_login.dart';
import 'package:project_uts/Screens/Profil/profil_screen.dart';
import 'package:project_uts/Screens/Signup/signup_screen.dart';
import 'package:project_uts/components/already_have_an_account_check.dart';
import 'package:project_uts/components/rounded_button.dart';
import 'package:project_uts/components/rounded_input_field.dart';
import 'package:http/http.dart' as http;
import 'package:project_uts/components/rounded_password_field.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isObscure = true;
  bool _isChecked = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String textUsername = "";
  String textPassword = "";

  late Timer _timer;
  // String userEmail = "andiramdani@gmail.com";

  // String userPassword = "12345678";

  void validasiLogin() async {
    if (textUsername == "" && textPassword == "") {
      Fluttertoast.showToast(
          msg: "Username dan password harus diisi",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          fontSize: 16,
          backgroundColor: Colors.red);
    }

    showLoaderDialog(context, 10);
    final response = await http.post(
        Uri.parse("http://rismayana.diary-project.com/login.php"),
        body: jsonEncode({"username": textUsername, "password": textPassword}));
    int statCode = response.statusCode;

    if (statCode == 200) {
      String dataLogin = response.body;
      final data = jsonDecode(dataLogin);

      String resStatus = data["username"];
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Login Success"),
              content: Text("Welcome $resStatus"),
              actions: <Widget>[
                TextButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilScreen(),
                      ),
                    );
                  },
                )
              ],
            );
          });
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Login Failed"),
              content: Text("Username or Password Wrong!"),
              actions: <Widget>[
                TextButton(
                  child: Text("Oke"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  showLoaderDialog(BuildContext context, int _period) {
    AlertDialog alert = AlertDialog(
        content: Row(
      children: [
        const CircularProgressIndicator(),
        Container(
          margin: const EdgeInsets.only(left: 7),
          child: const Text("Loading..."),
        ),
      ],
    ));
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        _timer = Timer(Duration(seconds: _period), () {
          Navigator.of(context).pop();
        });
        return alert;
      },
    ).then((value) => {
          if (_timer.isActive) {_timer.cancel()}
        });
  }
  //   if (textEmail == userEmail && textPassword == userPassword) {
  //     setState(() {
  //       showDialog(
  //         context: context,
  //         builder: (BuildContext context) => const DialogSuccessLogin(),
  //       );
  //     });
  //   } else if (textEmail != userEmail && textPassword != userPassword) {
  //     setState(() {
  //       showDialog(
  //           context: context,
  //           builder: (BuildContext context) => const DialogFailedLogin());
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Masukkan Username",
              onChanged: (e) => textUsername = e,
            ),
            RoundedPasswordField(
              onChanged: (e) => textPassword = e,
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  validasiLogin();
                }),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAndAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignUpScreen();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
