import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:sale_form_demo/widgets/expansion_choice_widget.dart';

class AboutPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom(bool isExpanded) {
    Future.delayed(const Duration(milliseconds: 50), () {
      _scrollController.animateTo(isExpanded
          ? (_scrollController.position.maxScrollExtent + 170) // how much the expanding box
          : (_scrollController.position.maxScrollExtent - 170),
          duration: Duration(milliseconds: 500), curve: Curves.linear);
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          icon:  Icon(Icons.clear, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          Center(child: CompanyFullLogo()),
          SizedBox(height: 30),
          Image.asset('images/earthTest_webp.webp', fit: BoxFit.cover),
          Container(
            padding: EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Improving Reliability\nAcross The Globe',
                  style: TextStyle(color: colorBlue, fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'PinnacleART’s vision is to make the world reliable. We do this by'
                  'designing, implementing, and maintaining comprehensive asset'
                  'reliability and integrity programs for process facilities in the oil and'
                  'gas, chemical, mining, pharmaceutical, wastewater, and electric'
                  'power industries—including national oil companies, super majors,'
                  'and majors, as well as independents.',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Search Nearest Location',
                  style: TextStyle(color: colorBlue, fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ExpansionChoiceWidget(scrollToBottom: _scrollToBottom),
          Container(
            color: colorGrey5,

          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
