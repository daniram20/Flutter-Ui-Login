import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts/constants.dart';

class ProfilePicTure extends StatelessWidget {
  const ProfilePicTure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.jpg"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: kPrimaryLightColor),
                  ),
                  primary: kPrimaryLightColor,
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                onPressed: (){},
                child: SvgPicture.asset("icons/CameraIcon.svg"),
              ),
            ))
        ],
      ),
    );
  }
}