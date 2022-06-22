import 'package:flutter/material.dart';
import 'package:project_uts/constants.dart';

class PengalamanKerja extends StatelessWidget {
  const PengalamanKerja({
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
                    right: 30,
                    bottom: 15,
                    left: 15,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: (){}, 
                child: const Text("Konveksi Baju"),
              ),
              const SizedBox(width: 90,),
              const Text("Designer Mockup - 3 Bulan",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
              ),
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
                child: const Text("Capital Real Estate Agent"),
              ),
              const SizedBox(width: 20,),
              const Text("Designer Content - 3 Bulan",
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
                child: const Text("Online Shop"),
              ),
              const SizedBox(width: 105,),
              const Text("Content Creator - 3 Bulan",
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