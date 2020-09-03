import 'package:flutter/material.dart';
import 'package:ingronew/views/account/SignUpPage.dart';
import 'shared/app_theme.dart';
import 'views/home_bottom_navigation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'In-Gro',
      debugShowCheckedModeBanner: false,
      theme: appPrimaryTheme(),
      home: HomeBottomNavigationScreen(),
    );
  }
}
