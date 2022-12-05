import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/pages/tabs/message.dart';

class MyiOSStyleDemo extends StatefulWidget {
  const MyiOSStyleDemo({super.key});

  @override
  State<MyiOSStyleDemo> createState() => _MyiOSStyleDemoState();
}

class _MyiOSStyleDemoState extends State<MyiOSStyleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iOS Style'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('iOS风格'),
        onPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(
              builder: ((context) => const MyMessagePage())));
        },
      )),
    );
  }
}
