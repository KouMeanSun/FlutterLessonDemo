import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_animated_widget.dart';
import 'package:flutter_lesson/widgets/my_animation_list.dart';
import 'package:flutter_lesson/widgets/my_appbar_tabbar_tabbarview.dart';
import 'package:flutter_lesson/widgets/my_aspect_ratio.dart';
import 'package:flutter_lesson/widgets/my_button_page.dart';
import 'package:flutter_lesson/widgets/my_card.dart';
import 'package:flutter_lesson/widgets/my_dialog.dart';
import 'package:flutter_lesson/widgets/my_flex_expanded.dart';
import 'package:flutter_lesson/widgets/my_gridview_widget.dart';
import 'package:flutter_lesson/widgets/my_icon.dart';
import 'package:flutter_lesson/widgets/my_image.dart';
import 'package:flutter_lesson/widgets/my_key_widget.dart';
import 'package:flutter_lesson/widgets/my_list_view.dart';
import 'package:flutter_lesson/widgets/my_padding.dart';
import 'package:flutter_lesson/widgets/my_pageview.dart';
import 'package:flutter_lesson/widgets/my_route.dart';
import 'package:flutter_lesson/widgets/my_row_column.dart';
import 'package:flutter_lesson/widgets/my_scaffold.dart';
import 'package:flutter_lesson/widgets/my_stack_align_Positioned.dart';
import 'package:flutter_lesson/widgets/my_text.dart';
import 'package:flutter_lesson/widgets/my_wrap.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _listData = [
    "Text",
    "Image",
    "Icon",
    "ListView",
    "GridView",
    "Padding",
    "Row和Column",
    "FlexAndExpanded",
    "StackAlignAndPositioned",
    "AspectRatio",
    "Card",
    "Button",
    "Wrap",
    "Scaffold",
    "AppBarTabBarTabBarView",
    "Route",
    "Dialog",
    "PageView",
    "Key",
    "AnimationList",
    "Animated"
  ];
  void pushWithTitle(BuildContext context, String title) {
    if (title == "Text") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyTextWidget(),
          ));
    } else if (title == "Image") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyImage(),
          ));
    } else if (title == "Icon") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyIconWidget(),
          ));
    } else if (title == "ListView") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyListViewWidget(),
          ));
    } else if (title == "GridView") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyGridViewWidget(),
          ));
    } else if (title == "Padding") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyPadding(),
          ));
    } else if (title == "Row和Column") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyRowAndColumn(),
          ));
    } else if (title == "FlexAndExpanded") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyFlexAndExpanded(),
          ));
    } else if (title == "StackAlignAndPositioned") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyStackAlignAndPositioned(),
          ));
    } else if (title == "AspectRatio") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyAspectRatioWidget(),
          ));
    } else if (title == "Card") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyCardWidget(),
          ));
    } else if (title == "Button") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyButtonDemo(),
          ));
    } else if (title == "Wrap") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyWrapDemo(),
          ));
    } else if (title == "Scaffold") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyScaffoldDemo(),
          ));
    } else if (title == "AppBarTabBarTabBarView") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyAppBarTabBarTabBarView(),
          ));
    } else if (title == "Route") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyRouteDemo(),
          ));
    } else if (title == "Dialog") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyDialogDemo(),
          ));
    } else if (title == "PageView") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyPageViewDemo(),
          ));
    } else if (title == "Key") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyKeyWieget(),
          ));
    } else if (title == "AnimationList") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyAnimationListWidget(),
          ));
    } else if (title == "Animated") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyAnimatedWidget(),
          ));
    }
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Flutter demo'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: _listData
              .map((value) => ListTile(
                    leading: const Icon(Icons.menu),
                    trailing: const Icon(Icons.arrow_circle_right_outlined),
                    title: Text(value),
                    onTap: () {
                      pushWithTitle(context, value);
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
