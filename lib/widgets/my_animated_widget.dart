import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_animated_switche.dart';
import 'package:flutter_lesson/widgets/my_animation_Implicit.dart';
import 'package:flutter_lesson/widgets/my_animation_controller.dart';
import 'package:flutter_lesson/widgets/my_explicit_widget.dart';
import 'package:flutter_lesson/widgets/my_fade_transition.dart';
import 'package:flutter_lesson/widgets/my_hero_animation.dart';
import 'package:flutter_lesson/widgets/my_hero_photo_view.dart';
import 'package:flutter_lesson/widgets/my_scale_transition.dart';
import 'package:flutter_lesson/widgets/my_slide_Transition.dart';
import 'package:flutter_lesson/widgets/my_staggered_animation.dart';

class MyAnimatedWidget extends StatefulWidget {
  const MyAnimatedWidget({super.key});

  @override
  State<MyAnimatedWidget> createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "AnimatedSwitcher",
                  child: Text("AnimatedSwitcher"),
                ),
                const PopupMenuItem(
                  value: "AnimationController",
                  child: Text("AnimationController"),
                ),
                const PopupMenuItem(
                  value: "FadeTransition",
                  child: Text("FadeTransition"),
                ),
                const PopupMenuItem(
                  value: "ScaleTransition",
                  child: Text("ScaleTransition"),
                ),
                const PopupMenuItem(
                  value: "SlideTransition",
                  child: Text("SlideTransition"),
                ),
                const PopupMenuItem(
                  value: "staggered",
                  child: Text("交错动画"),
                ),
                const PopupMenuItem(
                  value: "Implitcit",
                  child: Text("隐式动画"),
                ),
                const PopupMenuItem(
                  value: "Explicit",
                  child: Text("显式动画"),
                ),
                const PopupMenuItem(
                  value: "Hero",
                  child: Text("Hero动画"),
                ),
                const PopupMenuItem(
                  value: "PhotoView",
                  child: Text("图片预览"),
                ),
              ];
            },
            onSelected: (value) => {
              if (value == "AnimatedSwitcher")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyAnimatedSwitcherWidget(),
                      ))
                }
              else if (value == "AnimationController")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyAnimationController(),
                      ))
                }
              else if (value == "FadeTransition")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyFadeTransitionDemo(),
                      ))
                }
              else if (value == "ScaleTransition")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyScaleTransition(),
                      ))
                }
              else if (value == "SlideTransition")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MySlideWidgetDemo(),
                      ))
                }
              else if (value == "staggered")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MyStaggeredAnimationWidgetDemo(),
                      ))
                }
              else if (value == "Implitcit")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyAnimationImplicitDemo(),
                      ))
                }
              else if (value == "Explicit")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyExplicitWidgetDemo(),
                      ))
                }
              else if (value == "Hero")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHeroAnimationWidgetDemo(),
                      ))
                }
              else if (value == "PhotoView")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyPhotoViewWidgetDemo(),
                      ))
                }
            }, //
            onCanceled: () => {},
          )
        ],
      ),
      // body: Center(
      //     child: AnimatedContainer(
      //   duration: const Duration(milliseconds: 500),
      //   width: flag ? 100 : 300,
      //   height: flag ? 100 : 300,
      //   color: Colors.blue,
      // )),
      // body: Center(
      //     child: AnimatedPadding(
      //   duration: const Duration(milliseconds: 500),
      //   curve: Curves.bounceInOut,
      //   padding: EdgeInsets.fromLTRB(10, flag ? 10 : 200, 0, 0),
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.blue,
      //   ),
      // )),
      // body: Stack(
      //   children: [
      //     AnimatedPositioned(
      //         curve: Curves.easeInOut,
      //         top: flag ? 10 : 500,
      //         left: flag ? 10 : 100,
      //         duration: const Duration(seconds: 1),
      //         child: Container(
      //           width: 60,
      //           height: 60,
      //           color: Colors.blue,
      //         )),
      //     Align(
      //       alignment: const Alignment(0, 0.8),
      //       child: ElevatedButton(
      //         child: const Text('Transform'),
      //         onPressed: () {
      //           setState(() {
      //             flag = !flag;
      //           });
      //         },
      //       ),
      //     )
      //   ],
      // ),
      // body: Center(
      //     child: AnimatedOpacity(
      //   duration: Duration(seconds: 1),
      //   opacity: flag ? 1 : 0.2,
      //   curve: Curves.linear,
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     color: Colors.blue,
      //   ),
      // )),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          color: Colors.blue,
          child: AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              style: TextStyle(
                fontSize: flag ? 20 : 50,
              ),
              child: const Text('你好Flutter')),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
