import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/review_tab_view_widget.dart';

class ReviewTabContainerWidget extends StatefulWidget {
  final List<Question> selectedList;
  ReviewTabContainerWidget({Key key, this.selectedList}) : super(key: key);

  @override
  _ReviewTabContainerWidgetState createState() => _ReviewTabContainerWidgetState();
}

class _ReviewTabContainerWidgetState extends State<ReviewTabContainerWidget> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: const Radius.circular(30.0), topRight: const Radius.circular(30.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 3.0, // has the effect of extending the shadow
              offset: Offset(
                0.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30, left: 5),
              child: Text(
                'SOLUTION CATEGORIES',
                style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700, fontSize: 12),
              ),
            ),
            Container(
              //This is responsible for the background of the tabbar, does the magic
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: colorBlue, width: 1))),
              child: TabBar(
                labelPadding: EdgeInsets.all(0),
                indicatorColor: colorGreen,
                indicatorWeight: 3,
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                      child: Text(
                    'EVALUATE',
                    style: TextStyle(
                      color: colorBlue,
                      fontSize: 14,
                    ),
                  )),
                  Tab(
                      child: Text(
                    'STRATEGIES',
                    style: TextStyle(
                      color: colorBlue,
                      fontSize: 14,
                    ),
                  )),
                  Tab(
                      child: Text(
                    'SUSTAIN',
                    style: TextStyle(
                      color: colorBlue,
                      fontSize: 14,
                    ),
                  )),
                  Tab(
                      child: Text(
                    'LIFE-CYCLE',
                    style: TextStyle(
                      color: colorBlue,
                      fontSize: 14,
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Center(
                    child: Text('Evaluate'),
                  ),
                  ReviewTabViewWidget(selectedList: widget.selectedList),
                  Center(
                    child: Text('Sustain'),
                  ),
                  Center(
                    child: Text('Life-Cycle'),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
