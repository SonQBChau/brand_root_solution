import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sale_form_demo/screens/about_page.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/custom_page_transition.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';


double buttonWidth = SizeConfig.screenWidth - 100;

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Builder(builder: (context) {
        SizeConfig().init(context);
        return Container(
          constraints: BoxConstraints.expand(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
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
              CompanyFullLogo(
                canPop: false,
              ), //<-- Click the logo on MenuPage won't trigger page change
              SizedBox(height: 30),
              MenuCard(title: 'EVALUATE'),
              SizedBox(height: 20),
              MenuCard(title: 'STRATEGIES', route: StrategiesPage()),
              SizedBox(height: 20),
              MenuCard(title: 'SUSTAIN'),
              SizedBox(height: 20),
              MenuCard(title: 'LIFE-CYCLE'),
              AboutButton(),
            ],
          ),
        );
      }),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final Widget route;
  MenuCard({this.title, this.route});

  final snackBar = SnackBar(
    duration: const Duration(milliseconds: 500),
    content: Text(
      'Please select Strategies!',
      style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
    ),
  );

  _handleOnPress(BuildContext context) {
    if (route != null) {
      Navigator.push(context, FadeRoute(page: route));
    } else {
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        elevation: 5,
        height: 100.0,
        minWidth: buttonWidth,
        color: Colors.white,
        textColor: colorBlue,
        onPressed: () => _handleOnPress(context),
        splashColor: colorGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}


class AboutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 30),
      width: buttonWidth,
      child: Card(
        color: colorBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 2,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) {
                  return AboutPage();
                },
                fullscreenDialog: true));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('ABOUT US', style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
