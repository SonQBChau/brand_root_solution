import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/widgets/launch_button_widget.dart';
import 'package:sale_form_demo/widgets/client_header_widget.dart';
import 'package:sale_form_demo/widgets/text_widget_info_page.dart';
import 'package:sale_form_demo/widgets/industry_widget.dart';
import 'package:sale_form_demo/widgets/position_widget.dart';
import 'package:sale_form_demo/widgets/representative_header_widget.dart';
import 'package:sale_form_demo/utils/validator.dart';

//auto validate form
//https://medium.com/@nitishk72/form-validation-in-flutter-d762fbc9212c

class CustomerInfoPage extends StatefulWidget {
  @override
  _CustomerInfoPageState createState() => _CustomerInfoPageState();
}

class _CustomerInfoPageState extends State<CustomerInfoPage> {
  final _formKey = GlobalKey<FormState>();

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
      onSubmit: (value) =>  print(value),
    ));
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Company',
      onValidate: (value) => validateEmpty(value, 'Please enter company'),
      onSubmit: (value) =>  print(value),
    ));
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'Email',
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
      onValidate: validateEmail,
      onSubmit: (value) =>  print(value),
    ));

    formWidget.add(IndustryWidget());
    formWidget.add(PositionWidget());

    formWidget.add(RepresentativeHeadderWidget());
    formWidget.add(TextWidgetInfoPage(
      hintTxt: 'User',
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
      onSubmit: (value) =>  print(value),
    ));
    formWidget.add(LaunchButtonWidget());
//    formWidget.add(AnimatedButton());
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }
}
