import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/services/intro_form.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class EmailRepresentativeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final introForm = Provider.of<IntroForm>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 20, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'EMAIL',
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
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGrey20),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: 'solutionengineer@$company.com'.toLowerCase(),
              hintStyle: TextStyle(
                  color: colorGrey20,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
              fillColor: Colors.white,
              filled: true,
            ),
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.w600, fontSize: 14),
            validator: validateEmail, // validator
            onSaved: (value) {
              introForm.setRepresentativeEmail(value);
            }, // onSaved function
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter representative email';
    }

    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }
}