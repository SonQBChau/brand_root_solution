import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/client_header_widget.dart';
import 'package:sale_form_demo/widgets/text_widget_info_page.dart';
import 'package:sale_form_demo/widgets/industry_widget.dart';
import 'package:sale_form_demo/widgets/launch_button_widget.dart';
import 'package:sale_form_demo/widgets/position_widget.dart';
import 'package:sale_form_demo/widgets/representative_header_widget.dart';
import 'package:sale_form_demo/utils/validator.dart';

class CustomerInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final introForm = Provider.of<IntroForm>(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: colorGrey10),
        child: Form(
          key: introForm.getFormKey(),
          child: ListView(
            children: _buildFormWidgets(introForm),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFormWidgets(IntroForm introForm) {
    List<Widget> formWidget = new List();

    formWidget.add(ClientHeaderWidget());
    formWidget.add(TextWidgetInfoPage(
      titleTxt: 'NAME',
      hintTxt: 'CLIENT NAME',
      onValidate: (value) => validateEmpty(value, 'Please enter name'),
      onSubmit: (value) =>  introForm.setName(value),
    ));
    formWidget.add(TextWidgetInfoPage(
      titleTxt: 'COMPANY',
      hintTxt: 'COMPANY NAME',
      onValidate: (value) => validateEmpty(value, 'Please enter company'),
      onSubmit: (value) =>  introForm.setCompany(value),
    ));
    formWidget.add(TextWidgetInfoPage(
      titleTxt: 'EMAIL',
      hintTxt: 'client@email.com',
      onValidate: validateEmail,
      onSubmit: (value) =>  introForm.setEmail(value),
    ));
//    formWidget.add(EmailWidget());
    formWidget.add(IndustryWidget());
    formWidget.add(PositionWidget());
//    formWidget.add(ReasonWidget());
    formWidget.add(RepresentativeHeadderWidget());
//    formWidget.add(EmailRepresentativeWidget());
    formWidget.add(TextWidgetInfoPage(
      titleTxt: 'EMAIL',
      hintTxt: 'solutionengineer@email.com',
      onValidate: validateEmail,
      onSubmit: (value) =>  introForm.setRepresentativeEmail(value),
    ));
    formWidget.add(LaunchButtonWidget());
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }


}
