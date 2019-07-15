import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';


/// Custom TextFormField for CustomerInfoPage
class TextWidgetInfoPage extends StatelessWidget {
  final String hintTxt;
  final TextCapitalization textCapitalization;
  final TextInputType textInputType;
  final Function onValidate;
  final Function onSubmit;
  final Key key;

  TextWidgetInfoPage({
    this.key,
    @required  this.hintTxt,
    this.textCapitalization = TextCapitalization.words,
    this.textInputType = TextInputType.text,
    this.onValidate,
    @required  this.onSubmit,
  }):
        assert(hintTxt != null),
        assert(onSubmit != null);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGreen),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGrey20),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),

              hintText: hintTxt,
              hintStyle: TextStyle(
                  color: colorGrey20,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
              fillColor: Colors.white,
              filled: true,
            ),
          textCapitalization: textCapitalization,
            keyboardType: textInputType,
            style: TextStyle(
                color: colorGreen, fontWeight: FontWeight.w600, fontSize: 13),

            validator: onValidate, //validator
            onSaved: (value) {
              onSubmit(value);
            }, // onSaved function
          ),
          SizedBox(
            height: 30,
          ),

        ],
      ),
    );
  }
}


