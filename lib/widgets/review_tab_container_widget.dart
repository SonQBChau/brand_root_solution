import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ReviewTabContainerWidget extends StatefulWidget {
  ReviewTabContainerWidget({Key key}) : super(key: key);

  @override
  _ReviewTabContainerWidgetState createState() => _ReviewTabContainerWidgetState();
}

class _ReviewTabContainerWidgetState extends State<ReviewTabContainerWidget> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: const Radius.circular(40.0), topRight: const Radius.circular(40.0)),
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
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'SOLUTION CATEGORIES',
                style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700, fontSize: 12),
              ),
            ),
            TabBar(
              labelPadding: EdgeInsets.all(0),
              labelColor: Colors.blue,
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Center(
                    child: Text('Address'),
                  ),
                  Center(
                    child: Text('Location'),
                  ),
                  Center(
                    child: Text('Location'),
                  ),
                  Center(
                    child: Text('Location'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
