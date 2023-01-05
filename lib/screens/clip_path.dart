import 'package:fast_food/config/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipPathScreen extends StatefulWidget {
  const ClipPathScreen({Key? key}) : super(key: key);

  @override
  State<ClipPathScreen> createState() => _ClipPathScreenState();
}

class _ClipPathScreenState extends State<ClipPathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipPath'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularText(
            children: [
              TextItem(
                text: const Text(
                  "Chuck Norris",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                space: 2,
                startAngle: -150,
                startAngleAlignment: StartAngleAlignment.start,
                direction: CircularTextDirection.clockwise,
              ),

              TextItem(
                text: const Text(
                  "Chuck Norris",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                space: 2,
                startAngle: -120,
                startAngleAlignment: StartAngleAlignment.start,
                direction: CircularTextDirection.clockwise,
              ),
              TextItem(
                text: const Text(
                  "Chuck Norris",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                space: 2,
                startAngle: -90,
                startAngleAlignment: StartAngleAlignment.start,
                direction: CircularTextDirection.clockwise,
              ),
              TextItem(
                text: const Text(
                  "Chuck Norris",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                space: 2,
                startAngle: -60,
                startAngleAlignment: StartAngleAlignment.start,
                direction: CircularTextDirection.clockwise,
              ),
              TextItem(
                text: const Text(
                  "Chuck Norris",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                space: 2,
                startAngle: -30,
                startAngleAlignment: StartAngleAlignment.start,
                direction: CircularTextDirection.clockwise,
              ),
            ],
            radius: 1500,
            position: CircularTextPosition.inside,
            // backgroundPaint: Paint()..color = Colors.grey.shade200,
          ),
          const SizedBox(height: 10,),
          Stack(
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
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50)
                ),
              ))
            ]
          ),
          Center(
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                height: 100,
                width: 0.9.sw,
                color: primaryColor,
                child: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      ),
                      Text(
                        'helios',
                        style: TextStyle(color: Colors.white, fontSize: 2
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    double hauteurDefini = h / 1.4;
    double factor = 5.0;

    print('hhhh $h');
    print('wwww $w');

    final path = Path();

    // (0, 0) first point
    path.lineTo(0, hauteurDefini);
    path.lineTo(0, h - factor);
    path.quadraticBezierTo(0, h, factor, h);
    path.lineTo(factor, h); // 2 point
    path.quadraticBezierTo(w * 0.5, h - 80, w - factor, h); // 3 point
    path.lineTo(w - factor, h); // 4 point
    path.quadraticBezierTo(w, h, w, h - factor); // 3 point
    path.lineTo(w, hauteurDefini); // 5 point
    path.quadraticBezierTo(
        w * 0.5, hauteurDefini - 80, 0, hauteurDefini); // 6 point
    path.lineTo(0, hauteurDefini);
    path.close();

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