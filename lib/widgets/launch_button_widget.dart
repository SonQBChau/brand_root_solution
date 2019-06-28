import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/utils/app_color.dart';

// https://medium.com/flutter-community/flutter-bouncing-button-animation-ece660e19c91

class LaunchButtonWidget extends StatefulWidget {
  @override
  _LaunchButtonWidgetState createState() => _LaunchButtonWidgetState();
}

class _LaunchButtonWidgetState extends State<LaunchButtonWidget>
    with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void validateForm(IntroFormProvider introForm) {
    bool isValid = true;
    introForm.autoValidate = true;
    //manually check dropdownbutton value
    if (introForm.getIndustry() == null) {
      introForm.setIndustryError(true);
      isValid = false;
    }
    if (introForm.getPosition() == null) {
      introForm.setPositionError(true);
      isValid = false;
    }

    if (introForm
        .getFormKey()
        .currentState
        .validate() && isValid) {
      introForm
          .getFormKey()
          .currentState
          .save();

//            print("Customer Name: " + introForm.getName());
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MenuPage()),
      );
    }
    else {
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text(
          'Please enter the required field(s)!',
          style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);


//      Navigator.push(
//        context,
//        MaterialPageRoute(builder: (context) => MenuPage()),
//      );
    }
  }

  Future handleOnPress(IntroFormProvider introForm) async {
    _controller.forward();
    await Future.delayed(Duration(milliseconds: 200));
    _controller.reverse();
    await Future.delayed(Duration(milliseconds: 500));
    validateForm(introForm);


  }

  @override
  Widget build(BuildContext context) {
    final introForm = Provider.of<IntroFormProvider>(context);
    _scale = 1 - _controller.value;

    return GestureDetector(
    onTap: (){
      handleOnPress(introForm);
    },

      child: Transform.scale(
        scale: _scale,
        child: _animatedButtonUI,
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
    margin: EdgeInsets.symmetric(horizontal: 100),
    padding: EdgeInsets.symmetric(vertical: 10),
//    height: 50,
//    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          color: Color(0x80000000),
          blurRadius: 3.0,
          offset: Offset(0.0, 3.0),
        ),
      ],
      color: colorBlue,
    ),
    child: Center(
      child: Text(
        'LAUNCH',
        style: TextStyle(
          fontSize: 18,
//          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}