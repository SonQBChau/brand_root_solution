import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/about_page.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(
        'Please select Strategies!',
        style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
      ),
    );
    return Scaffold(
      body: Builder(builder: (context) {
        return Container(
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
              SizedBox(height: 50),
              CompanyFullLogo(),
              SizedBox(height: 30),
              Expanded(
                child: MaterialButton(
                  height: 100.0,
                  minWidth: 300.0,
                  color: Colors.white,
                  textColor: colorBlue,
                  onPressed: () => {Scaffold.of(context).showSnackBar(snackBar)},
                  splashColor: colorGreen,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    'EVALUATE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: MaterialButton(
                  height: 100.0,
                  minWidth: 300.0,
                  color: Colors.white,
                  textColor: colorBlue,
                  onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StrategiesPage()),)
                      },
                  splashColor: colorGreen,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    'STRATEGIES',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: MaterialButton(
                  height: 100.0,
                  minWidth: 300.0,
                  color: Colors.white,
                  textColor: colorBlue,
                  onPressed: () => {Scaffold.of(context).showSnackBar(snackBar)},
                  splashColor: colorGreen,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    'SUSTAIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: MaterialButton(
                  height: 100.0,
                  minWidth: 300.0,
                  color: Colors.white,
                  textColor: colorBlue,
                  onPressed: () => {Scaffold.of(context).showSnackBar(snackBar)},
                  splashColor: colorGreen,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                  child: Text(
                    'LIFE-CYCLE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 40),
                child: Card(
                  color: colorBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  elevation: 2,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return AboutPage();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('ABOUT US', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        );
      }),
    );
  }
}
