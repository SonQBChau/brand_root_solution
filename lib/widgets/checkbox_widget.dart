
import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CheckboxWidget extends StatelessWidget {
  final bool widgetValue;
  final String label;
  final Function notifyParent;
  final int index;

  CheckboxWidget({this.widgetValue, this.label, this.notifyParent, this.index});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widgetValue,
      activeColor: colorGreen,
      onChanged: (value) {
        notifyParent(index, value);
      },
      title: new Text(
        label,
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
