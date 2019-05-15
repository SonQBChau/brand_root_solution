import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CompanyNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'COMPANY',
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGrey20),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: 'Company Name',
              hintStyle: TextStyle(
                  color: colorGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 30,
          ),
        ],
      ),
    );
  }
}