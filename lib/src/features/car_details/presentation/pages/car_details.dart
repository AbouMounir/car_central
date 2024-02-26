import 'package:car_rental/gen/assets.gen.dart';
import 'package:car_rental/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remixicon/remixicon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  var controller;
  bool isReadMore = false;

  var itemsLogoCar = [
    Icons.event_seat_outlined,
    Icons.battery_2_bar_sharp,
    Icons.speed_sharp,
    FontAwesomeIcons.mapPin,
    CupertinoIcons.briefcase
  ];

  var itemsTitleCar = ["5 seats", "510 Hp", "200 km/h", "Auto", "2 bags"];
  @override
  void initState() {
    // TODO: implement initState
    controller = new PageController(
      viewportFraction: 1,
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColorName.white,
        body: SafeArea(
          child: Container(
            height: 1.sh,
            width: 1.sh,
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 1.sw,
                    height: .45.sh,
                    padding:
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                    margin:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                    decoration: BoxDecoration(
                        color: MyColorName.pantone,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Expanded(
                          child: PageView(
                            controller: controller,
                            children: [
                              Stack(
                                children: [
                                  Positioned(
                                    top: 125,
                                    right: 80,
                                    child: Image.asset(
                                      MyAssets.images
                                          .vueVoiture3dRemovebgPreview.path,
                                      fit: BoxFit.cover,
                                      //height: .9.sh,
                                      width: .5.sw,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(
                                                  Icons.arrow_back_ios_new)),
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(Icons.share_sharp)),
                                        ],
                                      ),
                                      Text(
                                        "Maruti Alto",
                                        style: GoogleFonts.roboto(
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.sp),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: MyColorName.star,
                                          ),
                                          Text(
                                            "4.9",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.black,
                                                fontSize: 24.sp),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "(110 Reviews)",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.mediumLight,
                                                fontSize: 24.sp),
                                          )
                                        ],
                                      ),
                                      /* SmoothPageIndicator(
                                          controller: controller, count: 6) */
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    top: 125,
                                    right: 80,
                                    child: Image.asset(
                                      MyAssets.images
                                          .vueVoiture3dRemovebgPreview.path,
                                      fit: BoxFit.cover,
                                      //height: .9.sh,
                                      width: .5.sw,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(
                                                  Icons.arrow_back_ios_new)),
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(Icons.share_sharp)),
                                        ],
                                      ),
                                      Text(
                                        "Maruti Alto",
                                        style: GoogleFonts.roboto(
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.sp),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: MyColorName.star,
                                          ),
                                          Text(
                                            "4.9",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.black,
                                                fontSize: 24.sp),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "(110 Reviews)",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.mediumLight,
                                                fontSize: 24.sp),
                                          )
                                        ],
                                      ),
                                      /* SmoothPageIndicator(
                                          controller: controller, count: 6) */
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    top: 125,
                                    right: 80,
                                    child: Image.asset(
                                      MyAssets.images
                                          .vueVoiture3dRemovebgPreview.path,
                                      fit: BoxFit.cover,
                                      //height: .9.sh,
                                      width: .5.sw,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(
                                                  Icons.arrow_back_ios_new)),
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(Icons.share_sharp)),
                                        ],
                                      ),
                                      Text(
                                        "Maruti Alto",
                                        style: GoogleFonts.roboto(
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.sp),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: MyColorName.star,
                                          ),
                                          Text(
                                            "4.9",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.black,
                                                fontSize: 24.sp),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "(110 Reviews)",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.mediumLight,
                                                fontSize: 24.sp),
                                          )
                                        ],
                                      ),
                                      /* SmoothPageIndicator(
                                          controller: controller, count: 6) */
                                    ],
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    top: 125,
                                    right: 80,
                                    child: Image.asset(
                                      MyAssets.images
                                          .vueVoiture3dRemovebgPreview.path,
                                      fit: BoxFit.cover,
                                      //height: .9.sh,
                                      width: .5.sw,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(
                                                  Icons.arrow_back_ios_new)),
                                          IconButton(
                                              onPressed: () {},
                                              style: IconButton.styleFrom(
                                                  iconSize: 35,
                                                  backgroundColor:
                                                      MyColorName.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              icon: Icon(Icons.share_sharp)),
                                        ],
                                      ),
                                      Text(
                                        "Maruti Alto",
                                        style: GoogleFonts.roboto(
                                            color: MyColorName.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.sp),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: MyColorName.star,
                                          ),
                                          Text(
                                            "4.9",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.black,
                                                fontSize: 24.sp),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "(110 Reviews)",
                                            style: GoogleFonts.roboto(
                                                color: MyColorName.mediumLight,
                                                fontSize: 24.sp),
                                          )
                                        ],
                                      ),
                                      /* SmoothPageIndicator(
                                          controller: controller, count: 6) */
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: controller,
                          count: 4,
                          effect: WormEffect(
                              dotHeight: 8.r,
                              dotWidth: 8.r,
                              activeDotColor: MyColorName.star),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Overview",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 26.sp),
                    ),
                    subtitle: Wrap(
                      children: [
                        Text(
                          "Data 26 packages have newer versions incompatible with dependency constraints.Try flutter pub outdated for more information.package:smooth_page_indicator/smooth_page_indicator.dart",
                          maxLines: isReadMore ? 10 : 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            child: Text(
                              isReadMore ? "Read Less" : "Read More",
                              style: GoogleFonts.roboto(
                                  color: MyColorName.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),
                            ),
                            onTap: () {
                              setState(() {
                                isReadMore = !isReadMore;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemsLogoCar.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            color: MyColorName.white,
                            elevation: 0,
                            child: Column(
                              children: [
                                Container(
                                  width: .15.sw,
                                  height: .15.sw,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: MyColorName.pantone,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(itemsLogoCar[index]),
                                ),
                                Text(itemsTitleCar[index])
                              ],
                            ));
                      },
                    ),
                  ),
                  Text(
                    "Renter",
                    style: GoogleFonts.roboto(
                        fontSize: 21.sp, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18.r,
                            backgroundImage:
                                AssetImage(MyAssets.images.webDeveloper.path),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Jason Smith",
                            style: GoogleFonts.roboto(fontSize: 21.sp),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                  iconSize: 30,
                                  backgroundColor: MyColorName.pantone,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              icon: Icon(Remix.chat_3_line)),
                          SizedBox(
                            width: 10.w,
                          ),
                          IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                  iconSize: 30,
                                  backgroundColor: MyColorName.pantone,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              icon: Icon(Icons.local_phone_outlined)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Material(
          child: Container(
            padding: EdgeInsets.all(15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "\$450",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26.sp),
                    ),
                    Text(
                      "/Day",
                      style: GoogleFonts.roboto(
                          color: MyColorName.textgray,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: MyColorName.black,
                      padding: EdgeInsets.symmetric(
                          horizontal: 35.w, vertical: 15.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    "Rent Now",
                    style: GoogleFonts.roboto(
                        color: MyColorName.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
