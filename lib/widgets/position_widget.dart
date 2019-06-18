
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/custom_divider.dart';

class PositionWidget extends StatelessWidget {
  final List<DropdownMenuItem<int>> industryList = [
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
    final introForm = Provider.of<IntroFormProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(top: 13, bottom: 13, left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(23),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  hint: Text(
                    'POSITION',
                    style: TextStyle(
                        color: colorGreen,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                  icon: Icon(Icons.keyboard_arrow_down, color: colorGrey,),
                  isDense: true,
                  isExpanded: true,
                  style: TextStyle(
                      color: colorGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                  items: industryList,
                  value: introForm.getPosition(),
                  onChanged: (value) {
                    introForm.setPosition(value);
                    introForm.setPositionError(false);
                  }),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          buildErrorMessage(introForm),
          CustomDivider(),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  buildErrorMessage(IntroFormProvider introForm) {
    if (introForm.getPositionError()){
      return Container(
        padding: EdgeInsets.only(top:5,bottom: 5, left: 5),
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