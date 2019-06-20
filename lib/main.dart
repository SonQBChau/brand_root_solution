import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/chart_page.dart';
import 'package:sale_form_demo/screens/customer_info_page.dart';
import 'package:sale_form_demo/screens/flow_chart_page.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/screens/my_home_page.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/utils/app_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: FlowChartPage(),
//home: MyHomePage(),


//      home: ChangeNotifierProvider<IntroFormProvider>(
//        builder: (_) => IntroFormProvider(),
//          child: PageView(
//            scrollDirection: Axis.vertical,
//            children: <Widget>[
//              MyHomePage(),
//              CustomerInfoPage(),
//
//            ],
//          )
//      ),


    );
  }
}

