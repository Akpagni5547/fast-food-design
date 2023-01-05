import 'package:fast_food/screens/book_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/constant.dart';

class DetailScreen extends StatefulWidget {
  final int index;

  const DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late String tagName;
  bool showLongText = false;
  String description =
      'Melting cheese pizza making with Extra virgin olive oil. Cornmeal'
      'Cornmeal, beef/chicken. Tomato sauce (smooth or pureed), Firm mozza, 100 gm onion, '
      '70 gm chopped capsicum'
      'Melting cheese pizza making with Extra virgin olive oil. Cornmeal'
      'Cornmeal, beef/chicken. Tomato sauce (smooth or pureed), Firm mozza, 100 gm onion, '
      '70 gm chopped capsicum';

  int currentIndex = 1;
  int countItem = 1;

  @override
  void initState() {
    tagName = 'pizza-' + widget.index.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffecfcf6),
          ),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                CupertinoIcons.heart,
                color: Color(0xffecfcf6),
              ))
        ],
      ),
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: primaryColor,
          ),
          Column(
            children: [
              const Spacer(),
              Container(
                height: 0.70.sh,
                width: 1.sw,
                padding: EdgeInsets.only(top: 100.h, left: 20.w, right: 20.w),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Melting Cheese Pizza',
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffdf6e2)),
                            child: const Icon(Icons.local_pizza)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pizza Italiano',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.timer_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.sm,
                            ),
                            const Text(
                              '15 min',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.sm,
                            ),
                            Container(
                              height: 5.sm,
                              width: 5.sm,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 15.w,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 10.sm,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.sm,
                            ),
                            Text(
                              '[2.2k review]',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(
                              width: 10.sm,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 10.sm,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                        flex: 7,
                        // height: 60.h,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      currentIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 120.sm,
                                    width: 96.w,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 2.0,
                                            color: currentIndex == 0
                                                ? primaryColor
                                                : Colors.grey)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 25.sm,
                                          width: 25.sm,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: currentIndex == 0
                                              ? primaryColor
                                              : Colors.white,
                                          border: currentIndex == 0
                                              ? Border.all(
                                              style: BorderStyle.none)
                                              : Border.all(
                                              width: 2.0,
                                              color: Colors.grey),
                                        ),
                                          child: Container(
                                              height: 10.sm,
                                              width: 10.sm,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white)),
                                        ),
                                        SizedBox(
                                          height: 17.sm,
                                        ),
                                        Text(
                                          'Small 8"',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.sp),
                                        ),
                                        SizedBox(
                                          height: 5.sm,
                                        ),
                                        Text(
                                          '\$9.99',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 13.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      currentIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 120.sm,
                                    width: 96.w,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    margin: EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 2.0,
                                            color: currentIndex == 1
                                                ? primaryColor
                                                : Colors.grey)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 25.sm,
                                          width: 25.sm,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: currentIndex == 1
                                                ? primaryColor
                                                : Colors.white,
                                            border: currentIndex == 1
                                                ? Border.all(
                                                    style: BorderStyle.none)
                                                : Border.all(
                                                    width: 2.0,
                                                    color: Colors.grey),
                                          ),
                                          child: Container(
                                              height: 10.sm,
                                              width: 10.sm,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white)),
                                        ),
                                        SizedBox(
                                          height: 17.sm,
                                        ),
                                        Text(
                                          'Medium 12"',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.sp),
                                        ),
                                        SizedBox(
                                          height: 5.sm,
                                        ),
                                        Text(
                                          '\$12.99',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 13.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      currentIndex = 2;
                                    });
                                  },
                                  child: Container(
                                    height: 120.sm,
                                    width: 96.w,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 2.0,
                                            color: currentIndex == 2
                                                ? primaryColor
                                                : Colors.grey)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 25.sm,
                                          width: 25.sm,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: currentIndex == 2
                                                ? primaryColor
                                                : Colors.white,
                                            border: currentIndex == 2
                                                ? Border.all(
                                                style: BorderStyle.none)
                                                : Border.all(
                                                width: 2.0,
                                                color: Colors.grey),
                                          ),
                                          child: Container(
                                              height: 10.sm,
                                              width: 10.sm,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white)),
                                        ),
                                        SizedBox(
                                          height: 17.sm,
                                        ),
                                        Text(
                                          'Large 18"',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.sp),
                                        ),
                                        SizedBox(
                                          height: 5.sm,
                                        ),
                                        Text(
                                          '\$16.99',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 13.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Melting cheese pizza making with Extra virgin olive oil. Cornmeal, beef/chicken. Tomato sauce (smooth or pureed), Firm mozza, 100 gm onion,
                            SizedBox(
                              height: 10.h,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: showLongText
                                        ? '$description. '
                                        : '${description.substring(0, 170)}...',
                                    style: TextStyle(color: Colors.grey),
                                    children: [
                                  TextSpan(
                                      text: showLongText ? 'Less' : 'More',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => setState(() {
                                              showLongText = !showLongText;
                                            }),
                                      style: TextStyle(color: primaryColor))
                                ]))
                          ],
                        )),
                    const Spacer(),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: const TextSpan(
                                    text: 'Total:',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: ' \$',
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontWeight: FontWeight.bold),
                                          children: [
                                            TextSpan(
                                                text: '12.99',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ]),
                                    ]),
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1.0, color: Colors.grey)),
                                    child: GestureDetector(
                                      onTap: (){
                                        if ( countItem > 1) {
                                          setState(() {
                                            countItem--;
                                          });
                                        }
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.sm,
                                  ),
                                  Text(countItem.toString(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 15.sm,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1.0, color: Colors.grey)),
                                    child: GestureDetector(
                                      onTap: (){
                                          setState(() {
                                            countItem++;
                                          });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.grey,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const BookTableScreen()));
                              },
                              child: Text(
                                'Next',
                                style: TextStyle(fontSize: 15.sm),
                              )),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 0,
              child: Container(
                child: Hero(
                  tag: tagName,
                  child: Image.asset(
                    'assets/images/food.png',
                    height: 250,
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
