import 'package:car_rental/gen/assets.gen.dart';
import 'package:car_rental/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceCar extends StatefulWidget {
  const ChoiceCar({super.key});

  @override
  State<ChoiceCar> createState() => _ChoiceCarState();
}

class _ChoiceCarState extends State<ChoiceCar> {
  // Initial Selected Value
  String dropdownvalue = 'Riyad, AR';

  // List of items in our dropdown menu
  var items = [
    'California, US',
    'Abidjan, CIV',
    'Paris, FR',
    'Riyad, AR',
    'Caire, EGYT',
  ];

  var itemsLogoCar = [
    MyAssets.images.carLogoNissan,
    MyAssets.images.citroen,
    MyAssets.images.ferrariLogoIcon145829,
    MyAssets.images.mercedesJpg,
    MyAssets.images.teslaLogoIcon181279,
    MyAssets.images.toyotaLogoIconOnTransparentPNG,
    MyAssets.images.transparentHondaLogoIcon
  ];

  var itemsTitleCar = [
    "Nissan",
    "Citroen",
    "Ferrari",
    "Mercedes",
    "Tesla",
    "Toyota",
    "Honda"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColorName.linen,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 65.w, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                        iconSize: 35,
                        backgroundColor: MyColorName.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    icon: Icon(Icons.menu_sharp)),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,
                  dropdownColor: Colors.transparent,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    MyAssets.images.webDeveloper.path,
                    fit: BoxFit.cover,
                    height: 60,
                  ),
                )
                /* CircleAvatar(
                  radius: 20.r,
                  backgroundImage:
                      AssetImage(MyAssets.images.webDeveloper.path),
                ), */
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Let's find your favourite \ncar here",
              style: GoogleFonts.roboto(
                  color: MyColorName.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Expanded(
                  child: SearchBar(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 15)),
                    shape: MaterialStateProperty.all(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)))),
                    backgroundColor:
                        MaterialStateProperty.all(MyColorName.white),
                    leading: const Icon(
                      Icons.search,
                      size: 35,
                    ),
                    hintText: "Find your car",
                    hintStyle: MaterialStateProperty.all(
                        TextStyle(color: MyColorName.darkgray, fontSize: 20.h)),
                    // other arguments
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.article))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTitle(
              title: "Trending Brands",
            ),
            SizedBox(
              height: 10.h,
            ),
            itemsLogoCar.length > 0
                ? SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemsLogoCar.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            color: MyColorName.linen,
                            elevation: 0,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: MyColorName.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CircleAvatar(
                                    radius: 25.r,
                                    backgroundColor: MyColorName.white,
                                    backgroundImage:
                                        AssetImage(itemsLogoCar[index].path),
                                  ),
                                ),
                                Text(itemsTitleCar[index])
                              ],
                            ));
                      },
                    ),
                  )
                : const Center(child: Text('No items')),
            SizedBox(
              height: 10.h,
            ),
            ListTitle(
              title: "New Cars",
            ),
            SizedBox(
              height: 10.h,
            ),
            itemsLogoCar.length > 0
                ? Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: itemsLogoCar.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                color: MyColorName.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    colorBlendMode: BlendMode.clear,
                                    width: 150,
                                    image: AssetImage(MyAssets
                                        .images.voiture3dFondSimple.path)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Maruti Alto"),
                                    Text("\$450/Day"),
                                    Row(
                                      children: [
                                        Icon(Icons.star),
                                        Text("4.9"),
                                        Stack()
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor:
                                                    MyColorName.black,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            onPressed: () {},
                                            child: Text(
                                              "Rent Now",
                                              style: TextStyle(
                                                  color: MyColorName.white),
                                            )),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.favorite_border))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ));
                      },
                    ),
                  )
                : const Center(child: Text('No items')),
          ],
        ),
      ),
    );
  }
}

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    this.title,
  });

  final title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
              color: MyColorName.black,
              fontWeight: FontWeight.bold,
              fontSize: 24.sp),
        ),
        TextButton(
          onPressed: () {},
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "View All",
              style: GoogleFonts.roboto(
                  color: MyColorName.darkgray, fontSize: 18.h),
            ),
            Icon(Icons.arrow_forward_ios),
          ]),
        )
      ],
    );
  }
} /* https://www.codeur.com/-saliacra */
