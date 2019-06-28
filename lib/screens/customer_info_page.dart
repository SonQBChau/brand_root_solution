import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/launch_button_widget.dart';
import 'package:sale_form_demo/widgets/client_header_widget.dart';
import 'package:sale_form_demo/widgets/text_widget_info_page.dart';
import 'package:sale_form_demo/widgets/industry_widget.dart';
import 'package:sale_form_demo/widgets/position_widget.dart';
import 'package:sale_form_demo/widgets/representative_header_widget.dart';
import 'package:sale_form_demo/utils/validator.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;

//auto validate form
//https://medium.com/@nitishk72/form-validation-in-flutter-d762fbc9212c

class CustomerInfoPage extends StatefulWidget {
  @override
  _CustomerInfoPageState createState() => _CustomerInfoPageState();
}

class _CustomerInfoPageState extends State<CustomerInfoPage> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool showIndustryError = false;
  bool showPositionError = false;

  void validateForm(){
    _autoValidate = true;
    //manually check dropdownbutton value
    if (globals.customerIndustry == null){
      setState(() {
        showIndustryError = true;
      });
    }
    else{
      setState(() {
        showIndustryError = false;
      });
    }
    if (globals.customerPosition == null){
      setState(() {
        showPositionError = true;
      });
    }
    else{
      setState(() {
        showPositionError = false;
      });
    }

    //all validate
    if (_formKey.currentState.validate() && !showPositionError && !showIndustryError ){
      _formKey.currentState.save();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MenuPage()),
      );
      }



  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Container(
//        constraints: BoxConstraints.expand(
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
//        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: ListView(
            children: _buildFormWidgets(_formKey),
          ),
        ),

      ),
    );
  }

  List<Widget> _buildFormWidgets(GlobalKey _formKey) {
    List<Widget> formWidget = new List();

    formWidget.add(ClientHeaderWidget());
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Name',
      onValidate: (value) => validateEmpty(value, 'Please enter name'),
      onSubmit: (value) =>  globals.customerName = value,
    ));
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Company',
      onValidate: (value) => validateEmpty(value, 'Please enter company'),
      onSubmit: (value) =>  globals.customerCompany = value,
    ));
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Email',
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
      onValidate: validateEmail,
      onSubmit: (value) =>  globals.customerEmail = value,
    ));

    formWidget.add(IndustryWidget(showError: showIndustryError));
    formWidget.add(PositionWidget(showError: showPositionError));

    formWidget.add(RepresentativeHeadderWidget());
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'User',
      onValidate: (value) => validateEmpty(value, 'Please enter user'),
      onSubmit: (value) =>  globals.representativeUser = value,
    ));
    formWidget.add(SizedBox(height: 10));
    formWidget.add(LaunchButtonWidget(onSubmit: validateForm));
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }
}
