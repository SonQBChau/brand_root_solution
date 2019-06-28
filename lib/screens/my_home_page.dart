
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/customer_info_page.dart';
import 'package:sale_form_demo/utils/custom_page_transition.dart';
import 'package:sale_form_demo/widgets/company_logo_cluster.dart';
import 'package:sale_form_demo/widgets/logo_text_animator.dart';

//http://flutterdevs.com/blog/flutter-splash-screen/

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  startTime() async {
    return  Timer(Duration(seconds: 3), navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,CustomPageTransition(widget: CustomerInfoPage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Stack(
                  children: <Widget>[
                    CompanyLogoCluster(),
                    LogoTextAnimator(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}










