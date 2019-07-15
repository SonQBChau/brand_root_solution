import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/custom_expension_tile.dart';

/// Multiple choice selector with expand animation
class PositionWidget extends StatefulWidget {
  @override
  _PositionWidgetState createState() => _PositionWidgetState();
}

class _PositionWidgetState extends State<PositionWidget> {
  final GlobalKey<CustomExpansionTileState> expansionTileKey = new GlobalKey();

  String title = 'Position';

  _handleLocationChange(String value) {
    setState(() {
      title = value;
    });
    expansionTileKey.currentState.collapse();
  }

  @override
  Widget build(BuildContext context) {
    var titleColor = title == 'Position'? colorGrey20 : colorGreen;
    return Column(
      key: Key('position'),
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
                  title: 'Executive',
                  onTap: _handleLocationChange,
                ),
                IndustryChoice(
                  title: 'Director',
                  onTap: _handleLocationChange,
                ),
                IndustryChoice(
                  title: 'Manager',
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