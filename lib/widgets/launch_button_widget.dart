import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/services/intro_form.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class LaunchButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final introForm = Provider.of<IntroForm>(context);

    return Container(
      padding: EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 40),
      child: RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'LAUNCH',
            style: TextStyle(fontSize: 18),
          ),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // remove unwanted extra top and bottom padding
        textColor: Colors.white,
        color: colorBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          bool isValid = true;
          //manually check dropdownbutton value
          if (introForm.getIndustry() == null) {
            introForm.setIndustryError(true);
            isValid = false;
          }
          if (introForm.getPosition() == null) {
            introForm.setPositionError(true);
            isValid = false;
          }

          if (introForm.getFormKey().currentState.validate() && isValid) {
            introForm.getFormKey().currentState.save();

            print("Customer Name: " + introForm.getName());
          } else {
            final snackBar = SnackBar(
              content: Text(
                'Please fix the error(s)!',
                style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
              ),
            );
            Scaffold.of(context).showSnackBar(snackBar);


            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );

          }
        },
      ),
    );
  }
}
