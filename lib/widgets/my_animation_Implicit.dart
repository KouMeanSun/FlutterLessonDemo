import 'package:flutter/material.dart';

class MyAnimationImplicitDemo extends StatefulWidget {
  const MyAnimationImplicitDemo({super.key});

  @override
  State<MyAnimationImplicitDemo> createState() =>
      _MyAnimationImplicitDemoState();
}

class _MyAnimationImplicitDemoState extends State<MyAnimationImplicitDemo> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('隐式动画')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
      ),
      // body: Center(
      //   child: TweenAnimationBuilder(
      //       tween: Tween(begin: 100.0, end: flag ? 100.0 : 200.0),
      //       duration: const Duration(seconds: 1),
      //       builder: ((context, value, child) {
      //         return Icon(
      //           Icons.star,
      //           size: value,
      //         );
      //       })),
      // ),
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: flag ? 0.2 : 1.0),
            duration: const Duration(seconds: 1),
            builder: ((context, value, child) {
              return Opacity(
                opacity: value,
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                ),
              );
            })),
      ),
    );
  }
}
