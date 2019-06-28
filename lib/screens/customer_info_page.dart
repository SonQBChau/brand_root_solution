import 'package:flutter/material.dart';
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

  void validateForm(){
    _formKey.currentState.save();
    print('==============');
    print(globals.customerName);
    print(globals.customerCompany);
    print(globals.customerEmail);
    print(globals.representativeUser);
  }

  @override
  Widget build(BuildContext context) {
    bool _autoValidate = false;


    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
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

    formWidget.add(IndustryWidget());
    formWidget.add(PositionWidget());

    formWidget.add(RepresentativeHeadderWidget());
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'User',
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
      onSubmit: (value) =>  globals.representativeUser = value,
    ));
    formWidget.add(SizedBox(height: 10));
    formWidget.add(LaunchButtonWidget(onSubmit: validateForm));
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }
}
