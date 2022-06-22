import 'package:flutter/material.dart';
import 'package:project_uts/constants.dart';

class AlreadyHaveAndAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAndAccountCheck({
    Key? key, 
    this.login = true, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Tidak punya akun ? " : "Sudah punya akun ? ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign UP" : "Sign In",
            style: const TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
