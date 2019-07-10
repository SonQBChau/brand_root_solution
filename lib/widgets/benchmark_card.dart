

import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/custom_slider.dart';

class BenchmarkCardSlider extends StatelessWidget {
  final String title;
  final String content;
  final String benchmarkValue;
  final List<String> benchmarkRange;
  final Function onSubmit;
  BenchmarkCardSlider({this.title, this.content, this.benchmarkValue, this.onSubmit, this.benchmarkRange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 10,),
              BenchmarkSlider(
                initialValue: benchmarkValue,
                onSlide:  onSubmit,
                benchmarkRange: benchmarkRange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class BenchmarkCardExpand extends StatelessWidget {
  final String title;
  final String content;
  final String benchmarkValue;
  final Function onSubmit;
  BenchmarkCardExpand({this.title, this.content, this.benchmarkValue, this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}