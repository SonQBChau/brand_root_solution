import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:lottie_flutter/lottie_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sale_form_demo/utils/size_config.dart';


class AnimatedGraph extends StatefulWidget {
  @override
  _AnimatedGraphState createState() => _AnimatedGraphState();
}

class _AnimatedGraphState extends State<AnimatedGraph> with SingleTickerProviderStateMixin {

  LottieComposition _composition;
  String _assetName = 'animation/graph_offset.json';
  AnimationController _controller;






  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 1),
      vsync: this,
    );
    _controller.addListener(() => setState(() {}));

    loadAsset(_assetName).then((LottieComposition composition) {
      setState(() {
        _composition = composition;
      });
    });


    // not sure how to fix this, but it need some delay to start the animation
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _controller.forward();
      });
    });
  }


//  dispose cause back button error, not sure why
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double size = (SizeConfig.screenWidth/2 -50) * 2;

    return
      Center(
        child: Container(
        child: Lottie(
          composition: _composition,
          size:  Size(size, size),
          controller: _controller,
        ),
    ),
      );

  }
}

Future<LottieComposition> loadAsset(String assetName) async {
  return await rootBundle
      .loadString(assetName)
      .then<Map<String, dynamic>>((String data) => json.decode(data))
      .then((Map<String, dynamic> map) =>  LottieComposition.fromMap(map));
}
