import 'package:car_rental/gen/assets.gen.dart';
import 'package:car_rental/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(MyAssets
                        .images.voitureDevantEmpireStateBuilding.path))),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 20.h),
              height: .35.sh,
              // width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Let's Start A New \n Experience",
                        style: GoogleFonts.roboto(
                            color: MyColorName.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.sp),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Choose your favourite car, rent it \n and enjoy new expereince",
                          style: GoogleFonts.roboto(
                              color: MyColorName.darkgray,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp))
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyColorName.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.r))),
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "Let's Start",
                        ),
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
