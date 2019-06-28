

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:animator/animator.dart';
import 'package:sale_form_demo/widgets/company_logo_cluster.dart';
import 'package:sale_form_demo/widgets/company_logo_widget.dart';
import 'package:sale_form_demo/widgets/logo_text_animator.dart';
import 'package:states_rebuilder/states_rebuilder.dart';




class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//        constraints: BoxConstraints.expand(
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
//        ),
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










