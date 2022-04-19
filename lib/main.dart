import 'package:catalog/core/store.dart';
import 'package:catalog/pages/cart_page.dart';
import 'package:catalog/pages/home.dart';
import 'package:catalog/pages/login.dart';
import 'package:catalog/utils/routes.dart';
import 'package:catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        themeMode: ThemeMode.light,
        theme: MyTheme.themeData,
        darkTheme: MyTheme.darkTheme,
        routes: {
          MyRoutes.loginroute: (context) => LoginPage(),
          MyRoutes.homeroute: (context) => HomePage(),
          MyRoutes.cartRoute: (context) => CartPage()
        });
  }
}
