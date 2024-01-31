import 'package:car_rental/gen/assets.gen.dart';
import 'package:car_rental/gen/colors.gen.dart';
import 'package:car_rental/src/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColorName.black,
        body: Stack(children: [
          Positioned(
            left: -290,
            child: Image.asset(
              MyAssets.images.car.path,
              fit: BoxFit.cover,
              height: .6.sh,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              height: .35.sh,
              // width: 1.sw,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's Start A New \nExperience",
                        style: GoogleFonts.roboto(
                            color: MyColorName.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.sp),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Choose your favourite car, rent it \nand enjoy new expereince",
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
                      onPressed: () {
                        context.go('/${PageRoutes.choiseCar}');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Let's Start",
                              style: TextStyle(
                                  color: MyColorName.black,
                                  fontSize: 25.h,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
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
