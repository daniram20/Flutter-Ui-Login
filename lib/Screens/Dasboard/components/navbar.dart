import 'package:flutter/material.dart';
import 'package:project_uts/Screens/Profil/profil_screen.dart';
import 'package:project_uts/constants.dart';


class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          // title: const Text("Dashboard"),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(child: Text("Dashboard")),
              
            ],
          ),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: GestureDetector(
                child: const Text(
                    "Profil",
                    style: TextStyle(fontSize: 20),textAlign: TextAlign.end,
                  ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProfilScreen();
                  }));
                },
              ),
            ),
          ]),
    );
  }
}
