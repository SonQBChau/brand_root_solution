import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sale_form_demo/utils/size_config.dart';

class PinnacleWayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorBlue,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          color: colorBlue,
          child: Hero(
            tag: "PinnacleWay",
            child: PhotoView.customChild(
              childSize: Size(SizeConfig.safeAreaScreenWidth, SizeConfig.safeAreaScreenHeight - 100),
              child: Image.asset(
                "images/PinnacleWay_2.png",
              ),
              backgroundDecoration: BoxDecoration(
                color: colorBlue,
              ),
              minScale: 1.0,
            ),
          ),
        )
    );
  }
}
