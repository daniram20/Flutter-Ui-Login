import 'package:flutter/material.dart';
import 'package:project_uts/components/rounded_button.dart';

class DialogFailedLogin extends StatelessWidget {
  const DialogFailedLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text("Login Gagal"),
      content: const Text(
        "Username atau password salah, silahkan coba lagi !",
        style: TextStyle(fontSize: 15),
      ),
      actions: [
        RoundedButton(
          text: "OKE",
          color: Colors.red,
          press: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
