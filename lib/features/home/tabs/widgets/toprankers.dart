import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Toprankers extends StatelessWidget {
  const Toprankers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Rankers",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: (){
          
              }, child: Text("View all-->",style: TextStyle(color: Colors.amber),))
            ],
          ),
        ],
      ),
    );
  }
}
