import 'package:flutter/material.dart';
import 'package:project_uts/constants.dart';

class RiwayatPendidikan extends StatelessWidget {
  const RiwayatPendidikan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  primary: kPrimaryLightColor,
                  padding: const EdgeInsets.only(
                    top: 15,
                    right: 40,
                    bottom: 15,
                    left: 15,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: (){},
                child: const Text("SD"),
              ),
              const SizedBox(width: 20,),
              const Text("SDN 05 Muara Ciujung Barat",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
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
                onPressed: (){},
                child: const Text("SMP"),
              ),
              const SizedBox(width: 20,),
              const Text("SMPN 01 Rangkasbitung",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
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
                onPressed: (){},
                child: const Text("SMK"),
              ),
              const SizedBox(width: 20,),
              const Text("SMKN 01 Rangkasbitung",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}