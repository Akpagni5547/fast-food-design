// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:fast_food/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/constant.dart';

class Category {
  final String title;
  final bool selected;

  Category({required this.title, required this.selected});
}

class HomeScreen extends StatefulWidget  {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      Category(title: 'Meat', selected: false),
      Category(title: 'Fast food', selected: true),
      Category(title: 'Sushi', selected: false),
      Category(title: 'Drinks', selected: false),
      Category(title: 'Dessert', selected: false),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blueGrey,
      //   onPressed: null,
      //   child: Icon(Icons.account_circle),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // color: Colors.grey,
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 20,

        child: Padding(
          padding: EdgeInsets.only(left: 25,right: 25, bottom: 10),
          child:  Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipPath(
                  clipper: CustomClipPath2(),
                  child: Container(
                    height: 90,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    alignment: Alignment.center,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cart',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '2 items',
                              style: TextStyle(color: Color(0xffa1d7c3), fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/food.png',
                                fit: BoxFit.cover,
                                height: 60,
                                // width: 100,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/food.png',
                                fit: BoxFit.cover,
                                height: 60,
                                // width: 100,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    child: Container(
                      height: 3,
                      width: 50,
                      decoration:  BoxDecoration(
                          color: const Color(0xffe7e7e7),
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ))
              ]
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Rakibs',
                    style: TextStyle(color: Colors.grey, fontSize: Title3),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Text(
                    'Hungry Now? 🔥',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundColor: primaryColor,
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          // minimum: EdgeInsets.only(bottom: 50),
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: PaddingBodyH),
          child: Column(
            children: [
              Container(
                width: 0.9.sw,
                child: TextFormField(
                  decoration: InputDecoration(
                      // focusColor: primaryColor,
                      // focusedBorder: InputBorder(),
                      hintStyle: TextStyle(fontSize: 11.sp),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: primaryColor, width: 2.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.grey)),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        // color: primaryColor,
                      ),
                      focusColor: primaryColor,
                      hintText: 'Search...',
                      suffixIcon: const Icon(Icons.filter_2)),
                ),
              ),
              SizedBox(
                height: 30.sm,
              ),
              Container(
                height: SizeCategoriesCardH,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      width: SizeCategoriesCardW,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: index == currentIndex
                              ? primaryColor
                              : Colors.white,
                          border: index == currentIndex
                              ? Border.all(style: BorderStyle.none)
                              : Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child:
                            Image.asset('assets/images/food.png', height: 50.sm,),
                          ),
                          SizedBox(
                            height: 10.sm,
                          ),
                          Text(
                            categories[index].title,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: index == currentIndex
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.sm,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Items',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: const Text('See all'))
                ],
              ),
              SizedBox(
                height: 15.sm,
              ),
              Container(
                height: SizeProductCardH,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => DetailScreen(index: index))),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 15),
                        width: SizeProductCardW,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(RadiusAll),
                          color: productCardColor,
                        ),
                        margin: EdgeInsets.only(right: MarginRight),
                        child: Column(
                          children: [
                            Text(
                              'Melting Cheese Pizza',
                              style: TextStyle(
                                  fontSize: Title3,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                    text: '\$',
                                    children: [
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                      text: '9.99')
                                ])),
                            Spacer(),
                            Container(
                              // decoration: BoxDecoration(
                              //   // shape: BoxShape.circle,
                              //   //   boxShadow: [
                              //   //     BoxShadow(
                              //   //       color: Colors.black,
                              //   //       blurRadius: 5
                              //   //     )
                              //   //   ]
                              // ),
                              child: Hero(
                                tag: 'pizza-$index',
                                child: Image.asset(
                                  'assets/images/food.png',
                                  fit: BoxFit.cover,
                                  height: 150.sm,
                                  // width: 100,
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '🔥 44 Calories',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.timer_outlined,
                                          color: Colors.grey,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text('20 min')
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}


class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    double hauteurDefini = h / 1.4;
    double arrondi = 20;
    double largeurDefiniA = (w * 37) / 100;
    double largeurDefiniP = (w * 63) / 100;
    double distance = 15;
    double factor = 10.0;
    double profondeur = 10;

    print('hhhh $h');
    print('wwww $w');

    final path = Path();

    // (0, 0) first point
    path.lineTo(0, 0);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.lineTo(largeurDefiniP + factor, 0);
    path.quadraticBezierTo(largeurDefiniP, 0, largeurDefiniP - 3, 2);
    path.lineTo(largeurDefiniP - distance + 2, 7);
    path.quadraticBezierTo(largeurDefiniP - distance - 2, profondeur, largeurDefiniP - distance - 9, profondeur);
    path.lineTo(largeurDefiniA + distance + 3, profondeur);
    path.quadraticBezierTo(largeurDefiniA + distance, profondeur, largeurDefiniA + distance - 3, profondeur - 2);
    path.lineTo(largeurDefiniA + 3, 2);
    path.quadraticBezierTo(largeurDefiniA, 0, largeurDefiniA - factor , 0);
    path.lineTo(largeurDefiniA - factor , 0);
    path.lineTo(0, 0);
    path.close();




    // path.lineTo(arrondi, hauteurDefini);
    // path.lineTo(0, h - factor);
    // path.quadraticBezierTo(0, h, factor, h);
    // path.lineTo(factor, h); // 2 point
    // path.quadraticBezierTo(w * 0.5, h - 80, w - factor, h); // 3 point
    // path.lineTo(w - factor, h); // 4 point
    // path.quadraticBezierTo(w, h, w, h - factor); // 3 point
    // path.lineTo(w, hauteurDefini); // 5 point
    // path.quadraticBezierTo(
    //     w * 0.5, hauteurDefini - 80, 0, hauteurDefini); // 6 point
    // path.lineTo(0, hauteurDefini);
    // path.close();

    // double factor = 20.0;
    // path.lineTo(0, size.height - factor);
    // path.quadraticBezierTo(0, size.height, factor, size.height);
    // path.lineTo(size.width-factor, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    // path.lineTo(factor, 0);
    // path.quadraticBezierTo(0, 0, 0, factor);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}