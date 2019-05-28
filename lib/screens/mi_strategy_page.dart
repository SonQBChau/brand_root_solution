import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/tab_header.dart';

class MiStrategyPage extends StatefulWidget {
  @override
  _MiStrategyPageState createState() => _MiStrategyPageState();
}

class _MiStrategyPageState extends State<MiStrategyPage> {

  final _formKey = GlobalKey<FormState>();
  bool _value1 = false;
  String _activeHeader = 'High Impact';


  void switchTabHeader(String label){
    setState(() {
      _activeHeader = label;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double screeHeight = SizeConfig.safeAreaScreenHeight;
    final double screenWidth = SizeConfig.safeAreaScreenWidth;

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
        ),
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("images/Background.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(colorGreen10, BlendMode.color)),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 50,
                        )),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'MI STRATEGY MANAGEMENT',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),


                ],
              ),
            ),

            Positioned(
              top: 200,
              width: screenWidth,
              height: screeHeight - 200 + 20, // off top 200, plus 20 for spacing and safeare
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TabHeader(label: 'High Impact', activeHeader: _activeHeader, notifyParent: switchTabHeader),
                      TabHeader(label: 'Medium Impact', activeHeader: _activeHeader, notifyParent: switchTabHeader),
                      TabHeader(label: 'Low Impact', activeHeader: _activeHeader,notifyParent: switchTabHeader),

                    ],
                  ),

                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Form(
                          key: _formKey,
                        child: ListView(
                          children: _buildFormWidgets(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFormWidgets() {
    List<Widget> formWidget = new List();

    formWidget.add(checkbox1());

    return formWidget;
  }

  Widget checkbox1() {
    return CheckboxListTile(
      value: _value1,
      onChanged: (value) {
        setState(() {
          _value1 = value;
        });
      },
      title: new Text(
        'Maintenance & Reliability Practices Assessment',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}





