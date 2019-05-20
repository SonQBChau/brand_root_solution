import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight /4;
    final double cardPosition = cardHeight -20;

    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      top:cardPosition*3,
                      child: Container(
                        width: width,
                        height: cardHeight,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          color: colorGrey,
                          borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(15.0), bottomRight: const Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: new Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            )
                          ],
                        ),

                        child: Text(
                          'LIFE-CYCLE',
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Positioned(
                      top:cardPosition*2,
                      child: Container(
                        width: width,
                        height: cardHeight,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          color: colorOrange,
                          borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(15.0), bottomRight: const Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: new Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            )
                          ],
                        ),

                        child: Text(
                          'SUSTAIN',
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Positioned(
                      top:cardPosition,
                      child: Container(
                        width: width,
                        height: cardHeight,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          color: colorGreen,
                          borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(15.0), bottomRight: const Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: new Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            )
                          ],
                        ),

                        child: Text(
                          'STRATEGIES',
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Positioned(
                      top:0,
                      child: Container(
                        width: width,
                        height: cardHeight,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                          color: colorBlue,
                          borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(15.0), bottomRight: const Radius.circular(15.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: new Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            )
                          ],
                        ),

                        child: Text(
                          'STRATEGIES',
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30, top: 30),
                child: Text(
                  '+ ALL CATEGORIES',
                  style: TextStyle(color: colorGrey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
