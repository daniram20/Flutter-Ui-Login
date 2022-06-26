import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_uts/Screens/Dasboard/dashboard_screen.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
      return;
    }
    showLoaderDialog(context, 30);
    final response = await http.post(
        Uri.parse("http://rismayana.diary-project.com/login.php"),
        body: jsonEncode({"username": textUsername, "password": textPassword}));
    int statCode = response.statusCode;

    if (statCode == 200) {
      Navigator.pop(context);
      saveSession(textUsername);
      String dataLogin = response.body;
      final data = jsonDecode(dataLogin);
      String resStatus = data["username"];
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Login Success"),
              content: Text("Welcome $resStatus"),
              actions: <Widget>[
                TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(),
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

  saveSession(String textUsername) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("username", textUsername);
    await pref.setBool("is_login", true);
  }

  void removeSession(String textUsername) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove('is_login');
    await pref.remove('username');
  }

  void cekLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var islogin = pref.getBool("is_login");
    if (islogin != null && islogin) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const DashboardScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    cekLogin();
  }

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
              "assets/icons/login.svg",
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
