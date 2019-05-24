

import 'package:flutter/material.dart';

void justWait({@required Duration duration}) async {
  await Future.delayed(duration);
}