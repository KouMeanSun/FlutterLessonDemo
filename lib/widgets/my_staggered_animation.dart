import 'package:flutter/material.dart';

//交错动画
class MyStaggeredAnimationWidgetDemo extends StatefulWidget {
  const MyStaggeredAnimationWidgetDemo({super.key});

  @override
  State<MyStaggeredAnimationWidgetDemo> createState() =>
      _MyStaggeredAnimationWidgetDemoState();
}

class _MyStaggeredAnimationWidgetDemoState
    extends State<MyStaggeredAnimationWidgetDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool flag = true;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('交错动画')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          flag ? _controller.forward() : _controller.reverse();
          flag = !flag;
        },
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SlidingBox(
              controller: _controller,
              color: Colors.blue[200],
              curve: const Interval(0, 0.2)),
          SlidingBox(
              controller: _controller,
              color: Colors.blue[400],
              curve: const Interval(0.2, 0.4)),
          SlidingBox(
              controller: _controller,
              color: Colors.blue[600],
              curve: const Interval(0.4, 0.6)),
          SlidingBox(
              controller: _controller,
              color: Colors.blue[800],
              curve: const Interval(0.6, 0.8)),
          SlidingBox(
              controller: _controller,
              color: Colors.blue[900],
              curve: const Interval(0.8, 1.0)),
        ],
      )),
    );
  }
}

class SlidingBox extends StatelessWidget {
  final AnimationController controller;
  final Color? color;
  final Curve curve;
  const SlidingBox(
      {super.key,
      required this.controller,
      required this.color,
      required this.curve});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween(begin: const Offset(0, 0), end: const Offset(0.3, 0))
          .chain(CurveTween(curve: Curves.bounceInOut))
          .chain(CurveTween(curve: curve))
          .animate(controller),
      child: Container(
        width: 220,
        height: 60,
        color: color,
      ),
    );
  }
}
