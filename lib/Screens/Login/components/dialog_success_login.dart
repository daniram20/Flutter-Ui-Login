import 'package:flutter/material.dart';
import 'package:project_uts/Screens/Dasboard/dashboard_screen.dart';
import 'package:project_uts/Screens/Profil/profil_screen.dart';
import 'package:project_uts/Screens/Welcome/welcome_screen.dart';
import 'package:project_uts/components/rounded_button.dart';

class DialogSuccessLogin extends StatelessWidget {
  const DialogSuccessLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text("Login Berhasil"),
      content: const Text("Selamat! anda berhasil login"),
      actions: [
        RoundedButton(
            color: Colors.green,
            text: "OKE",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DashboardScreen(); //routing diganti ke profil page
              }));
            }),
      ],
    );
  }
}