
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class PositionWidget extends StatelessWidget {
  List<DropdownMenuItem<int>> industryList = [
    DropdownMenuItem(
      child: new Text('Executive'),
      value: 0,
    ),
    DropdownMenuItem(
      child: new Text('Director'),
      value: 1,
    ),
    DropdownMenuItem(
      child: new Text('Manager'),
      value: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final introForm = Provider.of<IntroForm>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'POSITION',
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 6, right: 6, bottom: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: colorGrey20, width: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  hint: Text(
                    'Select Position',
                    style: TextStyle(
                        color: colorGrey20,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  isDense: true,
                  isExpanded: true,
                  style: TextStyle(
                      color: colorGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  items: industryList,
                  value: introForm.getPosition(),
                  onChanged: (value) {
                    introForm.setPosition(value);
                    introForm.setPositionError(false);
                  }),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          buildErrorMessage(introForm),
          Divider(
            height: 30,
          ),
        ],
      ),
    );
  }

  buildErrorMessage(IntroForm introForm) {
    if (introForm.getPositionError()){
      return Container(
        padding: EdgeInsets.only(top:5,bottom: 5),
        child: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text(
              'Please select position',
              style:
              TextStyle(color: Colors.redAccent.shade700, fontSize: 12.0),
            ),
          ],
        ),
      );
    }
    else
      return Container();
  }
}