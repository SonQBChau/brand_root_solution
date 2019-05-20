

import 'package:flutter/material.dart';

class StrategiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: new BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(),
      ),
    );
  }
}
