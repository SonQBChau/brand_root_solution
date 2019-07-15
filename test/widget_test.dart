// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sale_form_demo/main.dart';
import 'package:sale_form_demo/screens/customer_info_page.dart';
import 'package:sale_form_demo/screens/my_home_page.dart';
import 'package:sale_form_demo/utils/validator.dart';
import 'package:sale_form_demo/widgets/text_widget_info_page.dart';
import 'package:quiver/testing/async.dart';

void main() {
  group('Test Customer Info Page', () {
//    testWidgets('Test TextField Widget on input', (WidgetTester tester) async {
//      // Build TextWidgetInfoPage widget that displays 'Name'.
//      await tester.pumpWidget(MaterialApp(
//          home: Scaffold(
//              body: TextWidgetInfoPage(
//        hintTxt: 'Name',
//        onSubmit: () {},
//      ))));
//
//      // Find a widget that displays the letter 'Name'.
//      expect(find.text('Name'), findsOneWidget);
//
//      // Enter 'John Doe' into the TextField.
//      await tester.enterText(find.byType(TextField), 'John Doe');
//
//      // Expect to find the item on screen.
//      expect(find.text('John Doe'), findsOneWidget);
//    });
    testWidgets('Test TextField Widget on validation', (WidgetTester tester) async {


      Widget buildTestableWidget(Widget widget) {
        // http://bizz84.github.io/2018/04/08/Testing-Flutter-Apps.html
        return  MediaQuery(
            data:  MediaQueryData(),
            child:  MaterialApp(home:  widget)
        );
      }

      // create a LoginPage
      CustomerInfoPage loginPage =  CustomerInfoPage();
      // add it to the widget tester
      await tester.pumpWidget(buildTestableWidget(loginPage));

      // since listview won't render anything off  the screen, we have to scroll down for widget to be visible
      await tester.drag(find.byType(ListView), const Offset(0.0, -250.0));
      await tester.pump();


      // Build TextWidgetInfoPage widget that displays 'User'.
//      await tester.pumpWidget(CustomerInfoPage());

      // Enter nothing into the TextField.
      Finder userField = find.byKey(Key('user'));
      await tester.enterText(userField, '');

      Finder launchButton = find.byKey(Key('launch'));




      await tester.tap(launchButton);
      await tester.pumpAndSettle();

      // Rebuild the widget after the state has changed.
//      await tester.pump();

      // Expect to find the item on screen.
      expect(find.text('Please enter your user'), findsOneWidget);
    });
  });
}
