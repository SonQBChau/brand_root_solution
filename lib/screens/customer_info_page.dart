import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
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
    final introForm = Provider.of<IntroFormProvider>(context);

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
          key: introForm.getFormKey(),
          child: ListView(
            children: _buildFormWidgets(introForm),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFormWidgets(IntroFormProvider introForm) {
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
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
      onValidate: validateEmail,
      onSubmit: (value) =>  introForm.setEmail(value),
    ));

    formWidget.add(IndustryWidget());
    formWidget.add(PositionWidget());

    formWidget.add(RepresentativeHeadderWidget());
    formWidget.add(TextWidgetInfoPage(
      titleTxt: 'EMAIL',
      hintTxt: 'solutionengineer@$company.com'.toLowerCase(),
      textCapitalization: TextCapitalization.none,
      textInputType: TextInputType.emailAddress,
      onSubmit: (value) =>  introForm.setRepresentativeEmail(value),
    ));
    formWidget.add(LaunchButtonWidget());
    formWidget.add(SizedBox(height: 30));

    return formWidget;
  }


}
