import 'package:flutter/material.dart';

class SampleDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          icon:  Icon(Icons.clear, color: Colors.black,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only( bottom: 20),
        color: Colors.white,
        child: Container(
          child: Image.asset(
            "images/sample_deliverable.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
