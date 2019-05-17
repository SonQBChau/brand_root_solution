import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/client_header_widget.dart';
import 'package:sale_form_demo/widgets/text_widget_info_page.dart';
import 'package:sale_form_demo/widgets/company_name_widget.dart';
import 'package:sale_form_demo/widgets/email_representative_widget.dart';
import 'package:sale_form_demo/widgets/email_widget.dart';
import 'package:sale_form_demo/widgets/industry_widget.dart';
import 'package:sale_form_demo/widgets/launch_button_widget.dart';
import 'package:sale_form_demo/widgets/position_widget.dart';
import 'package:sale_form_demo/widgets/reason_widget.dart';
import 'package:sale_form_demo/widgets/representative_header_widget.dart';

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
      errorTxt: 'Please enter name',
      onSubmit: (value) =>  introForm.setName(value),
    ));
    formWidget.add(TextWidgetInfoPage(
      titleTxt: 'COMPANY',
      hintTxt: 'COMPANY NAME',
      errorTxt: 'Please enter company',
      onSubmit: (value) =>  introForm.setCompany(value),
    ));
    formWidget.add(EmailWidget());
    formWidget.add(IndustryWidget());
    formWidget.add(PositionWidget());
    formWidget.add(ReasonWidget());
    formWidget.add(RepresentativeHeadderWidget());
    formWidget.add(EmailRepresentativeWidget());
    formWidget.add(LaunchButtonWidget());
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }


}
