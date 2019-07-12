import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sale_form_demo/utils/size_config.dart';

class SampleDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          icon:  Icon(Icons.clear, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: PhotoView.customChild(
        childSize: Size(SizeConfig.safeAreaScreenWidth, SizeConfig.safeAreaScreenHeight - 100),
        child: Image.asset(
          "images/sample_deliverable.png",
        ),
        backgroundDecoration: BoxDecoration(
          color: Colors.white,
        ),
        minScale: 1.0,
      ));
  }
}
