import 'package:flutter/material.dart';
import 'package:text_form/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Text fields',
        theme: ThemeData(
          primaryColor: Color(0xFF0175C2),
          canvasColor: Colors.white,
          buttonColor: Color(0xFF0175C2),
          buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: HomePage(),
      );
}
