import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/custom_expension_tile.dart';

// One entry in the multilevel list displayed by this app.
//class Entry {
//  Entry(this.title, [this.children = const <Entry>[]]);
//
//  final String title;
//  final List<Entry> children;
//}

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class ExpansionChoiceWidget extends StatefulWidget {
  final Function scrollToBottom;
  ExpansionChoiceWidget({this.scrollToBottom});

  @override
  _ExpansionChoiceWidgetState createState() => _ExpansionChoiceWidgetState();
}

class _ExpansionChoiceWidgetState extends State<ExpansionChoiceWidget> {
  final GlobalKey<CustomExpansionTileState> expansionTileKey = new GlobalKey();

  String title = 'UNITED STATES';


  _handleLocationChange(String value){
    setState(() {
      title = value;
    });
    expansionTileKey.currentState.collapse();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Card(
        color: colorGrey5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: CustomExpansionTile(
          key: expansionTileKey,
          onExpansionChanged: (isExpanded) {
            widget.scrollToBottom(isExpanded);
          },

          title: Container(
            padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
            child: Text(title,
            style: TextStyle(
                color: colorGreen
            ),
            ),
          ),
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric( vertical: 2),
              child: Text('UNITED STATES',
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            LocationChoice(
              title: 'CHICAGO, ILLINOIS',
              onTap: _handleLocationChange,
            ),
            LocationChoice(
              title: 'SACRAMENTO, CALIFORNIA',
              onTap: _handleLocationChange,
            ),
            LocationChoice(
              title: 'PASADENA, TEXAS',
              onTap: _handleLocationChange,
            ),
            SizedBox(height: 10,),
            Text('EUROPE',
              style: TextStyle(
                color: colorBlue,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            LocationChoice(
              title: 'ROTTERDAM, NETHERLANDS',
              onTap: _handleLocationChange,
            ),
          ],
        ),
      ),
    );
  }
}

class LocationChoice extends StatelessWidget {
  final String title;
  final Function onTap;
  LocationChoice({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
//        print('select $title');
        onTap(title);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(title,
            style: TextStyle(
              color: colorBlue,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            )),
      ),
    );
  }
}
