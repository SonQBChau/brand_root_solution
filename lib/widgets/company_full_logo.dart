import 'package:flutter/material.dart';
import 'package:sale_form_demo/widgets/company_logo_widget.dart';
import 'package:sale_form_demo/widgets/company_name_widget.dart';

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

