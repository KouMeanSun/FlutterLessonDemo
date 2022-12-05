import 'package:flutter/material.dart';

import 'package:flutter_lesson/pages/tabs/category.dart';
import 'package:flutter_lesson/pages/tabs/home.dart';
import 'package:flutter_lesson/pages/tabs/message.dart';
import 'package:flutter_lesson/pages/tabs/setting.dart';
import 'package:flutter_lesson/pages/tabs/user.dart';
import 'package:flutter_lesson/route.dart';
import 'package:flutter_lesson/widgets/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),

      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
