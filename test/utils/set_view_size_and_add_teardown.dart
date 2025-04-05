import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

setViewSizeAndAddTeardown(WidgetTester tester, Size size) {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1.0;

  addTearDown(() {
    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}
