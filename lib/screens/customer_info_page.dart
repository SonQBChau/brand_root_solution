import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CustomerInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CUSTOMER INFORMATION', style: TextStyle(color: colorBlue, fontSize: 18),),
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

    formWidget.add(ClientName());
    formWidget.add(CompanyName());


    return formWidget;
  }
}

class ClientName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('NAME', style: TextStyle(color: colorGrey, fontWeight: FontWeight.bold),),
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
                enabledBorder:  OutlineInputBorder(
                  borderSide:  BorderSide(color: colorGrey20),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder:  OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ) ,

                  hintText: 'Client Name',
                fillColor: Colors.white,
                filled: true,

              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40, top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('COMPANY', style: TextStyle(color: colorGrey, fontWeight: FontWeight.bold),),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gapPadding: 4,
              ),
              hintText: 'Company Name',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ],
      ),
    );
  }
}
