import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 40,
            color: colorBlue,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(child: CompanyFullLogo()),
          SizedBox(height: 30),
          Image.asset('images/globe.png', fit: BoxFit.cover),
          Container(
            padding: EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Improving Reliability\nAcross The Globe',
                  style: TextStyle(color: colorBlue, fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'PinnacleART’s vision is to make the world reliable. We do this by'
                  'designing, implementing, and maintaining comprehensive asset'
                  'reliability and integrity programs for process facilities in the oil and'
                  'gas, chemical, mining, pharmaceutical, wastewater, and electric'
                  'power industries—including national oil companies, super majors,'
                  'and majors, as well as independents.',
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Search Nearest Location',
                  style: TextStyle(color: colorBlue, fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Card(
              color: colorGrey5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 2,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(top: 0, bottom: 0, left: 40, right: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('UNITED STATES', style: TextStyle(color: colorGreen)),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: colorGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
