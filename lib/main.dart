import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/about_page.dart';
import 'package:sale_form_demo/screens/benchmark_result_page.dart';
import 'package:sale_form_demo/screens/result_page.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/screens/chart_page.dart';
import 'package:sale_form_demo/screens/customer_info_page.dart';
import 'package:sale_form_demo/screens/implement_page.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/screens/my_home_page.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/screens/review_page.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/utils/app_color.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PinnacleArt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'GothicA1',
      ),
      initialRoute: '/',
      routes:{
        '/':(context) => MyHomePage(),
        '/customer':(context) => CustomerInfoPage(),
        '/menu':(context) => MenuPage(),
        '/mi':(context) => MiStrategyPage(),
        '/about':(context) => AboutPage(),
      }
    );
  }
}

