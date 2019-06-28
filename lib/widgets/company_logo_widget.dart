import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_images.dart';

class CompanyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoUrl,
      width: 100,
    );
  }
}