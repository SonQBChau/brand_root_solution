import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class IndustryWidget extends StatelessWidget {
  List<DropdownMenuItem<int>> industryList = [
    DropdownMenuItem(
      child: new Text('Refining'),
      value: 0,
    ),
    DropdownMenuItem(
      child: new Text('Drilling'),
      value: 1,
    ),
    DropdownMenuItem(
      child: new Text('Pumping'),
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
            'INDUSTRY',
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
                    'Select Industry',
                    style: TextStyle(
                        color: colorGrey,
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
                  value: introForm.getIndustry(),
                  onChanged: (value) {
                    introForm.setIndustry(value);
                    introForm.setIndustryError(false);
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
    if (introForm.getIndustryError()){
      return Container(
        padding: EdgeInsets.only(top:5,bottom: 5),
        child: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text(
              'Please select an industry',
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