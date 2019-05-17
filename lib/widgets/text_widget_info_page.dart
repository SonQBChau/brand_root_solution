import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class TextWidgetInfoPage extends StatelessWidget {
  final String titleTxt;
  final String hintTxt;
  final Function onValidate;
  final Function onSubmit;
  TextWidgetInfoPage({@required  this.titleTxt,
    @required  this.hintTxt,
    @required  this.onValidate,
    @required  this.onSubmit,
  }):
        assert(titleTxt != null),
        assert(hintTxt != null),
        assert(onValidate != null),
        assert(onSubmit != null);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 5, left: 15),
            child: Text(
              titleTxt,
              style: TextStyle(
                  color: colorBlue, fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGrey20),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              hintText: hintTxt,
              hintStyle: TextStyle(
                  color: colorGrey20,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
              fillColor: Colors.white,
              filled: true,
            ),
            textCapitalization: TextCapitalization.words,
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.w600, fontSize: 13),

            validator: onValidate, //validator
            onSaved: (value) {
              onSubmit(value);
            }, // onSaved function
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
