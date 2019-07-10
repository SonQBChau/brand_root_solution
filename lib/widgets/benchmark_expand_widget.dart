import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/custom_expension_tile.dart';

/// Multiple choice selector with expand animation
class BenchMarkExpandWidget extends StatefulWidget {
  final List<String> benchmarkList;
  String initialValue;
  final Function onSelect;

  BenchMarkExpandWidget({this.benchmarkList, this.initialValue, this.onSelect});
  @override
  _BenchMarkExpandWidgetState createState() => _BenchMarkExpandWidgetState();
}

class _BenchMarkExpandWidgetState extends State<BenchMarkExpandWidget> {
  final GlobalKey<CustomExpansionTileState> expansionTileKey = new GlobalKey();

  _handleLocationChange(String value) {
    setState(() {
      widget.initialValue = value;
      widget.onSelect(value);
    });
    expansionTileKey.currentState.collapse();
  }

  _buildChoice(List<String> benchmarkList) {
    List<BenchmarkChoice> choices= [];
    for (int i = 0; i < benchmarkList.length; i++) {
      choices.add(BenchmarkChoice(title: benchmarkList[i], onTap: _handleLocationChange,));
    }
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Card(
            color: colorGrey5,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: CustomExpansionTile(
              key: expansionTileKey,
              title: Container(
                padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                child: Text(
                  widget.initialValue,
                  style: TextStyle(color: colorGreen, fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
              children: <Widget>[
                ..._buildChoice(widget.benchmarkList),
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

class BenchmarkChoice extends StatelessWidget {
  final String title;
  final Function onTap;
  BenchmarkChoice({this.title, this.onTap});

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
                fontSize: 16
            )),
      ),
    );
  }
}
