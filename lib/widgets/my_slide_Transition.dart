import 'package:flutter/material.dart';

class MySlideWidgetDemo extends StatefulWidget {
  const MySlideWidgetDemo({super.key});

  @override
  State<MySlideWidgetDemo> createState() => _MySlideWidgetDemoState();
}

class _MySlideWidgetDemoState extends State<MySlideWidgetDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this, //Vsync 机制可以理解为是显卡与显示器的通信桥梁，显卡在渲染每一帧之前会等待垂
// 直同步信号，只有显示器完成了一次刷新时，发出垂直同步信号，显卡才会渲染下一帧，确保刷新率和帧率保
// 持同步，以达到供需平衡的效果，防止卡顿现象。
      duration: const Duration(seconds: 3),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SlideTransition'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SlideTransition(
          //   position: _controller.drive(
          //       Tween(begin: const Offset(0, 0), end: const Offset(1.2, 0))),
          //   child: const FlutterLogo(
          //     size: 80,
          //   ),
          // ),
          SlideTransition(
            position: Tween(
                    begin: const Offset(0, -1),
                    end: const Offset(0, 0.8) //表示实际的位置向右移动自身宽度的1.2倍
                    )
                .chain(CurveTween(curve: Curves.bounceIn))
                .chain(CurveTween(curve: const Interval(0.8, 1.0)))
                .animate(_controller),
            child: const FlutterLogo(size: 80),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _controller.forward();
                    },
                    child: const Text('Forward')),
                ElevatedButton(
                    onPressed: () {
                      _controller.reverse();
                    },
                    child: const Text('reverse')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
