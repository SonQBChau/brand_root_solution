import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:sale_form_demo/widgets/review_tab_container_widget.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 40,
            color: colorBlue,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: <Widget>[
          CompanyFullLogo(),
          SizedBox(height: 30),
          ReviewTabContainerWidget(),
//          Expanded(
//            child: Container(
//              padding: EdgeInsets.only(top: 32),
//              decoration: BoxDecoration(
//                color: Colors.white,
//                borderRadius:
//                    BorderRadius.only(topLeft: const Radius.circular(40.0), topRight: const Radius.circular(40.0)),
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.grey,
//                    blurRadius: 5.0, // has the effect of softening the shadow
//                    spreadRadius: 3.0, // has the effect of extending the shadow
//                    offset: Offset(
//                      0.0, // horizontal, move right 10
//                      2.0, // vertical, move down 10
//                    ),
//                  )
//                ],
//              ),
//              child: DefaultTabController(
//                length: 2,
//                child: Scaffold(
//                  appBar: PreferredSize(
//                    preferredSize: Size.fromHeight(35.0),
//                    child: TabBar(
//
//                      labelStyle: TextStyle(color: Colors.white),
//
//                      tabs: <Widget>[
//                        Tab(child: Text('EVALUATE', style: TextStyle(fontSize: 18.0,color:colorBlue))),
//                        Tab(child: Text('STRATEGIES', style: TextStyle(fontSize: 18.0, color: colorBlue))),
//                      ],
//
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
