import 'package:flutter/material.dart';
import 'package:project_uts/Screens/Login/components/background.dart';
import 'package:project_uts/Screens/Profil/components/data_diri.dart';
import 'package:project_uts/Screens/Profil/components/pengalaman_kerja.dart';
import 'package:project_uts/Screens/Profil/components/profile_picture.dart';
import 'package:project_uts/Screens/Profil/components/riwayat_pendidikan.dart';
import 'package:project_uts/Screens/Welcome/welcome_screen.dart';
import 'package:project_uts/components/rounded_button.dart';
import 'package:project_uts/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 1000,
        child: Background(
          child: Column(
            children: [
              const ProfilePicTure(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: kPrimaryColor,
                    padding: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: const Color(0xFFF5F6F9),
                  ),
                  onPressed: (){},
                  child: Row(
                    children: const [
                      Text("Profile Person",
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold),
                      )
                  ]),
                ), 
              ),
              SizedBox(
                height: 50,
                width: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text("Senin 25 April 2022",
                    style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              const DataDiri(),
              Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: kPrimaryColor,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        backgroundColor: const Color(0xFFF5F6F9),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: const [
                          Text("Riwayat Pendidikan",
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold),
                          )
                      ]),
                    ),
                  ),
                ],
              ),
              const RiwayatPendidikan(),
              Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10, left: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: kPrimaryColor,
                        padding: const EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        backgroundColor: const Color(0xFFF5F6F9),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: const [
                          (
                            Text("Pengalaman Kerja",
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold),
                          ))
                      ]),
                    ),
                  ),
                ],
              ),
              const PengalamanKerja(),
              // Padding(
              RoundedButton(
                text: "Logout", 
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const WelcomeScreen();
                }));
              })
            ],
          ),
        ),
      ),
    );
  }
}