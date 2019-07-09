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
import 'package:flutter_spinkit/flutter_spinkit.dart';

//auto validate form
//https://medium.com/@nitishk72/form-validation-in-flutter-d762fbc9212c

class CustomerInfoPage extends StatefulWidget {
  @override
  _CustomerInfoPageState createState() => _CustomerInfoPageState();
}

class _CustomerInfoPageState extends State<CustomerInfoPage> {
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
//  bool showIndustryError = false;
//  bool showPositionError = false;

  /// function to show Loading Indicator in popup Dialog to prevent user action
  void _onLoading() {

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Center(
                child: SpinKitThreeBounce(color: Colors.white),
              ));
        });
  }

  /// function to validate Form, if true, save the form and navigate to Menu-page
  void validateForm() {
    setState(() {//<-- after pressing submit button, turn on auto-validate to clear error onChange
      _autoValidate = true;
    });

    //manually check dropdownbutton value
//    if (globals.customerIndustry == null){
//      setState(() {
//        showIndustryError = true;
//      });
//    }
//    else{
//      setState(() {
//        showIndustryError = false;
//      });
//    }
//    if (globals.customerPosition == null){
//      setState(() {
//        showPositionError = true;
//      });
//    }
//    else{
//      setState(() {
//        showPositionError = false;
//      });
//    }


    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      _onLoading();//<-- show loading indicator
      //<-- add some delay to mimic calculation
      Future.delayed(const Duration(milliseconds: 2000), () {
        Navigator.pop(context); //<-- pop dialog indicator
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MenuPage()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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

  /// function to build list of input fields inside Form
  List<Widget> _buildFormWidgets(GlobalKey _formKey) {
    List<Widget> formWidget = new List();

    formWidget.add(ClientHeaderWidget());
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Name',
//      onValidate: (value) => validateEmpty(value, 'Please enter name'),
      onSubmit: (value) => globals.customerName = value,
    ));
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Company',
//      onValidate: (value) => validateEmpty(value, 'Please enter company'),
      onSubmit: (value) => globals.customerCompany = value,
    ));
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Email',
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
//      onValidate: validateEmail,
      onSubmit: (value) => globals.customerEmail = value,
    ));

    formWidget.add(IndustryWidget());
    formWidget.add(PositionWidget());

    formWidget.add(RepresentativeHeadderWidget());
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'User',
      onValidate: (value) => validateEmpty(value, 'Please enter your name'),
      onSubmit: (value) => globals.representativeUser = value,
    ));
    formWidget.add(SizedBox(height: 10));
    formWidget.add(LaunchButtonWidget(onSubmit: validateForm));
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }
}
