

import 'package:flutter/material.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';

class MenuPage extends StatelessWidget {
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
              SizedBox(height: 50,),
              CompanyFullLogo(),
              SizedBox(height: 50,),

          ],
        ),
      ),
    );
  }
}

