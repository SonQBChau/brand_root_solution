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
    return Row(
      children: <Widget>[
        Expanded(child: SizedBox(width: 10)),
        Image.asset(
          logoUrl,
          width: 100,
        ),
        Expanded(flex:12, child: SizedBox(width: 10)),
      ],
    );
  }
}

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: EdgeInsets.only( top: 40),
      child: Row(
        children: <Widget>[
          Expanded(child: SizedBox(width: 10)),
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
          Expanded(child: SizedBox(width: 10)),
        ],
      ),
    );
  }
}