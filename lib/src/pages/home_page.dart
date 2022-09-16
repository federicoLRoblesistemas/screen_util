import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(500, 990));
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '16sp, will not change with the system.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
            ),
            textScaleFactor: 1.0,
          ),
          SizedBox(
            width: 300.w,
            height: 300.w,
            child: const Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2015/01/28/23/35/hills-615429__480.jpg')),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 50.w,
            height: 200.h,
            color: Colors.red,
          ),
          //for example:
          const SizedBox(
            height: 20,
          ),
          //If you want to display a rectangle:
          Container(
            width: 375.w,
            height: 375.h,
            color: Colors.blue,
          ),
          const SizedBox(
            height: 20,
          ),
          //If you want to display a square based on width:
          Container(
            width: 300.w,
            height: 300.w,
            color: Colors.yellow,
          ),
          const SizedBox(
            height: 20,
          ),
          //If you want to display a square based on height:
          Container(
            width: 300.h,
            height: 300.h,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          //If you want to display a square based on minimum(height, width):
          Container(
            width: 300.r,
            height: 300.r,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
