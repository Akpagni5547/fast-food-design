import 'package:fast_food/config/constant.dart';
import 'package:fast_food/screens/clip_path.dart';
import 'package:fast_food/screens/detail_screen.dart';
import 'package:fast_food/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
       builder: (BuildContext context, Widget? child) {
         return MaterialApp(

           debugShowCheckedModeBanner: false,
           title: 'Flutter Demo',
           theme: ThemeData(
             primaryColor: primaryColor
           ),
           home:  HomeScreen(),
         );
       },
    );
  }
}
