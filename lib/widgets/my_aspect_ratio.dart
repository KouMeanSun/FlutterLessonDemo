import 'package:flutter/material.dart';

class MyAspectRatioWidget extends StatefulWidget {
  const MyAspectRatioWidget({super.key});

  @override
  State<MyAspectRatioWidget> createState() => _MyAspectRatioWidgetState();
}

class _MyAspectRatioWidgetState extends State<MyAspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio'),
      ),
      body: Container(
        width: 200,
        color: Colors.yellow,
        child: AspectRatio(
          aspectRatio: 2.0 / 1.0,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
