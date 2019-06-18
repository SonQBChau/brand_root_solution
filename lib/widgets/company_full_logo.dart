import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';

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