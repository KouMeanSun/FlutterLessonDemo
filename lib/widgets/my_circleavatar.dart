import 'package:flutter/material.dart';

class MyCircleAvatarDemo extends StatefulWidget {
  const MyCircleAvatarDemo({super.key});

  @override
  State<MyCircleAvatarDemo> createState() => _MyCircleAvatarDemoState();
}

class _MyCircleAvatarDemoState extends State<MyCircleAvatarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircleAvatar'),
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 110,
          backgroundColor: Color(0xffFDCF09),
          child: CircleAvatar(
            radius: 100,
            backgroundImage:
                NetworkImage("https://www.itying.com/images/flutter/3.png"),
          ),
        ),
      ),
    );
  }
}
