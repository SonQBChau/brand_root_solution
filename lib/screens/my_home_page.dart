

import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:animator/animator.dart';
import 'package:sale_form_demo/widgets/company_logo_cluster.dart';
import 'package:sale_form_demo/widgets/logo_text_animator.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
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
                    IntroText(),

                  ],
                ),
              ),
            ),
            SlideUpAnimator(MediaQuery.of(context).size.height),
          ],
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
            'ART',
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


class SlideUpAnimator extends StatelessWidget {
    SlideUpAnimator(this.height);
    final double height;

  @override
  Widget build(BuildContext context) {

    return Container(
      child:  Animator(
        tweenMap: {
          "opacity": Tween<double>(begin: 0, end: 1),
          "translation": Tween<Offset>(begin: Offset.zero, end: Offset(0, -1))
        },
        cycles: 0,
        duration: Duration(seconds: 1),
        builderMap: (Map<String, Animation> anim) => FadeTransition(
          opacity: anim["opacity"],
          child: FractionalTranslation(
            translation: anim["translation"].value,
            child: Icon(Icons.keyboard_arrow_up,size: 50, color: colorBlue,),
          ),
        ),
      ),
    );
  }
}
