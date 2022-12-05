import 'package:flutter/material.dart';

class MyFadeTransitionDemo extends StatefulWidget {
  const MyFadeTransitionDemo({super.key});

  @override
  State<MyFadeTransitionDemo> createState() => _MyFadeTransitionDemoState();
}

class _MyFadeTransitionDemoState extends State<MyFadeTransitionDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
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
      appBar: AppBar(
        title: const Text('FadeTransition'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _controller,
              child: const FlutterLogo(
                size: 80,
              ),
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
                          _controller.forward(); //正序播放一次
                        },
                        child: const Text('Forward')),
                    ElevatedButton(
                        onPressed: () {
                          _controller.reverse();
                        },
                        child: const Text('Reverse'))
                  ]),
            ),
          ]),
    );
  }
}
