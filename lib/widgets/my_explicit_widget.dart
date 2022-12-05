import 'package:flutter/material.dart';

class MyExplicitWidgetDemo extends StatefulWidget {
  const MyExplicitWidgetDemo({super.key});

  @override
  State<MyExplicitWidgetDemo> createState() => _MyExplicitWidgetDemoState();
}

class _MyExplicitWidgetDemoState extends State<MyExplicitWidgetDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Animation x = Tween(begin: -100.0, end: 100.0)
        .chain(CurveTween(curve: Curves.easeIn))
        .chain(CurveTween(curve: const Interval(0.2, 0.8)))
        .animate(_controller);
    return Scaffold(
      appBar: AppBar(title: const Text('显示动画')),
      // body: Center(
      //     child: AnimatedBuilder(
      //   animation: _controller,
      //   builder: ((context, child) {
      //     return Opacity(
      //       // opacity: _controller.value,
      //       opacity: Tween(begin: 0.5, end: 1.0).animate(_controller).value,
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.red,
      //         transform: Matrix4.translationValues(x.value, 0, 0),
      //         child: const Text('我是一个Text组件'),
      //       ),
      //     );
      //   }),
      // )
      // )
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Container(
              width: 200,
              height: 200,
              color: Colors.red,
              transform: Matrix4.translationValues(x.value, 0, 0),
              child: child,
            );
          },
          child: const Text("我是一个text组件"),
        ),
      ),
    );
  }
}
