import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobanking_clone/widget/sheet_list.dart';

class DraggableSheet extends StatelessWidget {
  const DraggableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 1.0,
        minChildSize: 0.5,
        maxChildSize: 1.0,
        builder: (context, controller) => Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              controller: controller,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, top: 25.0, bottom: 25.0),
                child: Column(
                  children: [
                    Divider(
                      // color: Colors.red
                      thickness: 5.0,
                      height: 1.h,
                      indent: 160,
                      endIndent: 160,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Cards",
                          style: TextStyle(
                              fontSize: 21.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Icon(Icons.circle_rounded, size: 8.sp),
                        Icon(Icons.circle_rounded, size: 8.sp),
                        SizedBox(
                          width: 20.w,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            cardContainer("VISA", "13971", "\$1,340.09"),
                            SizedBox(
                              width: 20.h,
                            ),
                            cardContainer("MASTER", "291011", "\$10,313.11"),
                            SizedBox(
                              width: 20.h,
                            ),
                            cardContainer("DEBIT", "311032", "\$0.00"),
                            SizedBox(
                              width: 20.h,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SheetList(),
                  ],
                ),
              ),
            )));
  }

  Widget cardContainer(String cardType, String cardNo, String cardBalance) {
    return Container(
      height: 190.h,
      width: 260.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            //blurStyle: BlurStyle.solid,
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(2, 2),
            blurRadius: 5,
            spreadRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(40),
        image: const DecorationImage(
            image: AssetImage("assets/splash.png"),
            fit: BoxFit.cover,
            opacity: 1.0),
      ),
      child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                        text: cardNo,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: "*****",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          )
                        ]),
                  ),
                  const Spacer(),
                  Text(
                    cardType,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Balance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                cardBalance,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
