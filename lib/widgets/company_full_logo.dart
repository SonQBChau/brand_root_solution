import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';

class CompanyFullLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        CompanyLogo(),
        CompanyName(),
      ],
    );
  }
}



class CompanyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Image.asset(
      logoUrl,
      width: 100,
    );
  }
}

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: 300,
      padding: EdgeInsets.only(left: 70, top: 40),
      child: Row(
        children: <Widget>[

          Text(
            company,
            style: TextStyle(
                color: colorBlue, fontSize: 32, fontWeight: FontWeight.w700),
          ),
          Text(
            'ART',
            style: TextStyle(
                color: colorGreen, fontSize: 32, fontWeight: FontWeight.w700),
          ),

        ],
      ),
    );
  }
}