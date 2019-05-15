import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CustomerInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CUSTOMER INFORMATION',
          style: TextStyle(color: colorBlue, fontSize: 18),
        ),
        backgroundColor: colorGrey20,
      ),
      body: Container(
        decoration: BoxDecoration(color: colorGrey10),
        child: ListView(
          children: _buildFormWidgets(),
        ),
      ),
    );
  }

  List<Widget> _buildFormWidgets() {
    List<Widget> formWidget = new List();

    formWidget.add(ClientNameWidget());
    formWidget.add(CompanyNameWidget());
    formWidget.add(EmailWidget());
    formWidget.add(IndustryWidget());

    return formWidget;
  }
}

class ClientNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 20, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: colorGrey20,
                  blurRadius: 2.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorGrey20),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Client Name',
                hintStyle: TextStyle(
                    color: colorGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Divider(height: 30,),
        ],
      ),
    );
  }
}

class CompanyNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'COMPANY',
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: colorGrey20,
                  blurRadius: 2.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorGrey20),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'Company Name',
                hintStyle: TextStyle(
                    color: colorGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Divider(height: 30,),
        ],
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'EMAIL',
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: colorGrey20,
                  blurRadius: 2.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorGrey20),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                hintText: 'client@email.com',
                hintStyle: TextStyle(
                    color: colorGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 5,),
          Divider(height: 30,),
        ],
      ),
    );
  }
}

class IndustryWidget extends StatelessWidget {

  List<DropdownMenuItem<int>> industryList = [
    DropdownMenuItem(
      child: new Text('Refining'),
      value: 0,
    ),
    DropdownMenuItem(
      child: new Text('Drilling'),
      value: 0,
    ),
    DropdownMenuItem(
      child: new Text('Oiling'),
      value: 0,
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'INDUSTRY',
            style: TextStyle(
                color: colorGrey, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: colorGrey20,
                  blurRadius: 2.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButton(
                hint: new Text('Select Industry'),
                items: industryList,
                onChanged: (value){
                  print(value);
                }),
          ),
          SizedBox(height: 5,),
          Divider(height: 30,),
        ],
      ),
    );
  }
}