import 'package:flutter/material.dart';
import 'package:project_uts/constants.dart';

class PengalamanKerja extends StatelessWidget {
  const PengalamanKerja({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                onPressed: (){}, 
                child: const Text("Konveksi Baju"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7),
                child: Text("Designer Mockup - 3 Bulan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(
                right: 5,
                left: 5,
              )),
              TextButton(
                style: TextButton.styleFrom(
                  // fixedSize: const Size.fromHeight(50),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Capital Real"),
                    Text("Estate Agent")
                  ]
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7),
                child: Text("Designer Content - 3 Bulan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
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
                onPressed: (){}, 
                child: const Text("Online Shop"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 7),
                child: Text("Content Creator - 3 Bulan",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}