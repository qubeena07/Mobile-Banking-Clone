import 'package:flutter/material.dart';
import 'package:mobanking_clone/utils/routes/routes.dart';
import 'package:mobanking_clone/utils/routes/routes_name.dart';

import 'view/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
              initialRoute: RoutesName.splash,
              onGenerateRoute: Routes.generateRoute,
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              home: SplashScreen());
        });
  }
}
