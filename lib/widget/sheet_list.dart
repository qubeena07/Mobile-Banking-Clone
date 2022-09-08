import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SheetList extends StatelessWidget {
  const SheetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 12, bottom: 15, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Transactions",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Spacer(),
              Icon(Icons.circle_rounded, size: 8.sp),
              Icon(Icons.circle_rounded, size: 8.sp),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          transcationRow(
              const Icon(
                Icons.local_taxi,
                color: Colors.black,
              ),
              "Taxi",
              "13"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.fastfood,
                color: Colors.black,
              ),
              "Grocery",
              "56"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
              "Shopping",
              "255"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.sports_gymnastics_outlined,
                color: Colors.black,
              ),
              "Gym",
              "32"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.house,
                color: Colors.black,
              ),
              "House",
              "1220"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.laptop,
                color: Colors.black,
              ),
              "Latop",
              "1999"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.phone_iphone,
                color: Colors.black,
              ),
              "IPhone",
              "999"),
          SizedBox(
            height: 8.h,
          ),
          transcationRow(
              const Icon(
                Icons.desk_rounded,
                color: Colors.black,
              ),
              "Furniture",
              "250"),
        ],
      ),
    );
  }

  Widget transcationRow(Icon tIcon, String tName, String tAmount) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 229, 229, 229),
          radius: 16,
          child: tIcon,
        ),
        SizedBox(
          width: 12.h,
        ),
        Text(
          tName,
          style: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        const Spacer(),
        Text(
          "\$$tAmount",
          style: TextStyle(fontSize: 17.sp),
        ),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }
}
