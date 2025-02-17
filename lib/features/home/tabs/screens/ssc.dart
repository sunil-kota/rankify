import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/features/home/tabs/widgets/toprankers.dart';

class Ssc extends StatelessWidget {
  const Ssc({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        
        children: [
          

         Toprankers(),
          

          //upcoming exams
        ],
      ),
    );
  }
}