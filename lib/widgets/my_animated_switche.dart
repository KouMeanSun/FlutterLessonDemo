import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_key_widget.dart';

class MyAnimatedSwitcherWidget extends StatefulWidget {
  const MyAnimatedSwitcherWidget({super.key});

  @override
  State<MyAnimatedSwitcherWidget> createState() =>
      _MyAnimatedSwitcherWidgetState();
}

class _MyAnimatedSwitcherWidgetState extends State<MyAnimatedSwitcherWidget> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher'),
      ),
      // body: Center(
      //     child: Container(
      //   alignment: Alignment.center,
      //   width: 300,
      //   height: 180,
      //   color: Colors.yellow,
      //   child: AnimatedSwitcher(
      //     duration: const Duration(milliseconds: 1000),
      //     child: flag
      //         ? const CircularProgressIndicator()
      //         : Image.network(
      //             'https://www.itying.com/images/flutter/2.png',
      //             fit: BoxFit.cover,
      //           ),
      //   ),
      // )),
      body: Center(
          child: Container(
        alignment: Alignment.center,
        width: 300,
        height: 180,
        color: Colors.yellow,
        child: AnimatedSwitcher(
          transitionBuilder: ((child, animation) {
            return ScaleTransition(
              scale: animation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          }),
          duration: const Duration(milliseconds: 400),
          child: flag
              ? const CircularProgressIndicator()
              : Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover,
                ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flag = !flag;
          });
        },
        child: const Icon(Icons.opacity),
      ),
    );
  }
}
