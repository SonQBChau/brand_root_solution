import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[

                Image.asset(logoUrl, width: 100,),
                Text('Company ', style: TextStyle(color: colorBlue, fontSize: 30, fontWeight: FontWeight.w500),),
                Text('Name ', style: TextStyle(color: colorGreen, fontSize: 30, fontWeight: FontWeight.w500),),
              ],
            ),
            Text(intro, style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700),),
          ],
        ),
      ),
    );
  }
}
