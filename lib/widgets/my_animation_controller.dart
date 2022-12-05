import 'package:flutter/material.dart';

class MyAnimationController extends StatefulWidget {
  const MyAnimationController({super.key});

  @override
  State<MyAnimationController> createState() => _MyAnimationControllerState();
}

class _MyAnimationControllerState extends State<MyAnimationController>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, //Vsync 机制可以理解为是显卡与显示器的通信桥梁，显卡在渲染每一帧之前会等待垂
      duration: const Duration(seconds: 1),
      lowerBound: 3, //第三圈转到第五圈
      upperBound: 5,
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
        title: const Text('RotationTransition、 AnimationController'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RotationTransition(
            turns: _controller,
            child: const FlutterLogo(
              size: 100,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _controller.forward(); //正序播放一次
                    },
                    child: const Text("Forward")),
                ElevatedButton(
                    onPressed: () {
                      _controller.reverse(); //倒序播放一次
                    },
                    child: const Text("Reverse")),
                ElevatedButton(
                    onPressed: () {
                      _controller.stop(); //停止播放
                    },
                    child: const Text("Stop")),
                ElevatedButton(
                    onPressed: () {
                      _controller.reset(); //重置
                    },
                    child: const Text("rest")),
                ElevatedButton(
                    onPressed: () {
                      _controller.repeat(); //重复播放
                    },
                    child: const Text("repeat"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
