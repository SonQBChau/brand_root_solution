import 'package:flutter/material.dart';
import 'package:sale_form_demo/widgets/company_logo_widget.dart';
import 'package:sale_form_demo/widgets/company_name_widget.dart';

class CompanyFullLogo extends StatelessWidget {
  final bool canPop;
  CompanyFullLogo({this.canPop=true});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        if (canPop){
          Navigator.of(context).pushReplacementNamed('/menu');
        }
      },
      child: Stack(
        children: <Widget>[
          CompanyLogo(),
          CompanyName(),
        ],
      ),
    );
  }
}

