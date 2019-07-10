import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/custom_expension_tile.dart';

/// Multiple choice selector with expand animation
class IndustryWidget extends StatefulWidget {
  @override
  _IndustryWidgetWidgetState createState() => _IndustryWidgetWidgetState();
}

class _IndustryWidgetWidgetState extends State<IndustryWidget> {
  final GlobalKey<CustomExpansionTileState> expansionTileKey = new GlobalKey();

  String title = 'Industry';

  _handleLocationChange(String value) {
    setState(() {
      title = value;
    });
    expansionTileKey.currentState.collapse();
  }

  @override
  Widget build(BuildContext context) {
    var titleColor = title == 'Industry'? colorGrey20 : colorGreen;
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: CustomExpansionTile(
              key: expansionTileKey,
              title: Container(
                padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                child: Text(
                  title,
                  style: TextStyle(color: titleColor, fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ),
              children: <Widget>[

                IndustryChoice(
                  title: 'Refining',
                  onTap: _handleLocationChange,
                ),
                IndustryChoice(
                  title: 'Drilling',
                  onTap: _handleLocationChange,
                ),
                IndustryChoice(
                  title: 'Pumping',
                  onTap: _handleLocationChange,
                ),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class IndustryChoice extends StatelessWidget {
  final String title;
  final Function onTap;
  IndustryChoice({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(title);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text(title,
            style: TextStyle(
              color: colorGreen,
              fontWeight: FontWeight.w600,
                fontSize: 13
            )),
      ),
    );
  }
}

