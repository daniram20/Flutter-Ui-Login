import 'package:flutter/material.dart';
import 'package:project_uts/constants.dart';

class DataDiri extends StatelessWidget {
  const DataDiri({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(
                    right: 5,
                    left: 5,
                  )),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: kPrimaryLightColor,
                      padding: const EdgeInsets.only(
                        top: 15,
                        right: 30,
                        bottom: 15,
                        left: 15,
                        ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor: kPrimaryColor,
                    ),
                    child: const Text(
                      "Nama",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: (){},
                  ),
                  const SizedBox(width: 20,),
                  const Text("Andi Ramdani",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(
                    right: 5,
                    left: 5,
                  )),
                  TextButton(
                    style: TextButton.styleFrom(primary: kPrimaryLightColor,padding: const EdgeInsets.only(
                        top: 15,
                        right: 30,
                        bottom: 15,
                        left: 15,
                        ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor: kPrimaryColor,
                    ),
                    child: const Text(
                      "No Hp",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: (){},
                  ),
                  const SizedBox(width: 20,),
                  const Text("0896-9755-8350",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(
                    right: 5,
                    left: 5,
                  )),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: kPrimaryLightColor,
                      padding: const EdgeInsets.only(
                        top: 15,
                        right: 45,
                        bottom: 15,
                        left: 15,
                        ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor: kPrimaryColor,
                    ),
                    child: const Text(
                      "NIM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: (){},
                  ),
                  const SizedBox(width: 20,),
                  const Text("D111911014",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              const SizedBox(height: 10,),
            ],
          ),
        )
      ],
    );
  }
}