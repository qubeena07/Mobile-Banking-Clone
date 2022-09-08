import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobanking_clone/widget/draggable_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.apps)),
          centerTitle: true,
          title: const Text(
            "Bank",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            )
          ],
        ),
        body: Stack(children: [
          Container(
            color: Colors.black,
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color.fromARGB(255, 179, 179, 179)),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "\$12,634.37",
                  style: TextStyle(
                      fontSize: 26.sp,
                      color: const Color.fromARGB(255, 240, 240, 240),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: size.height * 0.25,
                  width: size.width * 0.60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/graph.png"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                homeTabBar(),
              ],
            ),
          ),
          const DraggableSheet()
        ]));
  }

  homeTabBar() {
    return TabBar(
      indicatorColor: Colors.black,
      controller: tabController,
      indicator: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.pink,
          borderRadius: BorderRadius.circular(25)),
      tabs: const [
        Tab(
          text: "Oct",
        ),
        Tab(
          text: "Nov",
        ),
        Tab(
          text: "Dec",
        ),
        Tab(
          text: "Jan",
        ),
        Tab(
          text: "Feb",
        ),
        Tab(
          text: "Mar",
        ),
      ],
    );
  }
}
