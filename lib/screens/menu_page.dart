

import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
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
              
              
              
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: new Offset(0.0, 4.0),
                        blurRadius: 10.0,
                      )
                    ],
                  ),
                  child: Text('EVALUATE',
                  style: TextStyle(
                    color: colorBlue,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              ),
              

          ],
        ),
      ),
    );
  }
}

