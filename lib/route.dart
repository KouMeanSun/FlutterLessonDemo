import 'package:flutter/material.dart';
import 'package:flutter_lesson/pages/tabs/category.dart';
import 'package:flutter_lesson/pages/tabs/home.dart';
import 'package:flutter_lesson/pages/tabs/message.dart';
import 'package:flutter_lesson/pages/tabs/setting.dart';
import 'package:flutter_lesson/pages/tabs/user.dart';
import 'package:flutter_lesson/widgets/hero.dart';
import 'package:flutter_lesson/widgets/my_hero_animation.dart';
import 'package:flutter_lesson/widgets/my_home_page.dart';

final Map routes = {
  '/': (context) => const MyHomePage(),
  '/home': ((context) => const MyTabHomePage()),
  '/category': ((context) => const MyCategoryPage()),
  '/message': ((context) => const MyMessagePage()),
  '/setting': ((context) => const MySettingPage()),
  '/user': ((context, {arguments}) => MyUserPage(arguments: arguments)),
  '/hero': ((context, {arguments}) => HeroPage(arguments: arguments)),
};

var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: ((context) =>
              pageContentBuilder(context, arguments: settings.arguments)));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: ((context) => pageContentBuilder(context)));
      return route;
    }
  } else {
    return null;
  }
};
