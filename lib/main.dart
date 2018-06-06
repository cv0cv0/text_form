import 'package:flutter/material.dart';
import 'package:text_form/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Text fields',
        theme: ThemeData(
          primaryColor: Color(0xff0175c2),
        ),
        home: HomePage(),
      );
}