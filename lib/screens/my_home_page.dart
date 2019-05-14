

import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: new BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              CompanyLogo(),
              CompanyName(),
              IntroText(),
            ],
          ),
        ),
      ),
    );
  }
}

class CompanyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20),
        child: Image.asset(
          logoUrl,
          width: 100,
        ));
  }
}

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 82,top:38),
      child: Row(
        children: <Widget>[
          Text(
            company,
            style: TextStyle(
                color: colorBlue, fontSize: 35, fontWeight: FontWeight.w500),
          ),
          Text(
            'NAME ',
            style: TextStyle(
                color: colorGreen, fontSize: 35, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class IntroText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100,right: 40, top:100),
      child: Text(
        intro,
        style: TextStyle(color: colorBlue80, fontWeight: FontWeight.w700),
      ),
    );
  }
}
