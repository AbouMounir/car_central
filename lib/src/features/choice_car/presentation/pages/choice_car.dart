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
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.w, horizontal: 15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage:
                      AssetImage(MyAssets.images.webDeveloper.path),
                ),
              ],
            ),
            Text(
              "Let's find your favourite \n car here",
              style: GoogleFonts.roboto(
                  color: MyColorName.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp),
            ),
            Row(
              children: [
                Expanded(
                  child: SearchBar(
                    leading: const Icon(Icons.search),
                    hintText: "Find your car",
                    // other arguments
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.view_headline_sharp))
              ],
            ),
            ListTitle(
              title: "Trending Brands",
            ),
            itemsLogoCar.length > 0
                ? Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemsLogoCar.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: MyColorName.white,
                              ),
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
            ListTitle(
              title: "New Cars",
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
                            decoration: BoxDecoration(color: MyColorName.white),
                            child: Row(
                              children: [
                                Image(
                                    width: 150,
                                    image: AssetImage(
                                        MyAssets.images.vueVoiture3d.path)),
                                Column(
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
                                            ),
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
        ElevatedButton(
          onPressed: () {},
          child: Row(children: [
            Text(
              "View All",
              style: GoogleFonts.roboto(color: MyColorName.darkgray),
            ),
            Icon(Icons.arrow_right),
          ]),
        )
      ],
    );
  }
} /* https://www.codeur.com/-saliacra */
