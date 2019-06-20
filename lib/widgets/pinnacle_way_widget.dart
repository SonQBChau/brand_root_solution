import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/pinnacle_way_page.dart';

class PinnacleWayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute<Null>(
            builder: (BuildContext context) {
              return PinnacleWayPage();
            },
          ));
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: 160,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/PinnacleWay.png"),
              fit: BoxFit.contain,
            ),
          ),
          child: Text(
            'The Pinnacle Way',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
