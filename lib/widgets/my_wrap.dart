import 'package:flutter/material.dart';

class MyWrapDemo extends StatefulWidget {
  const MyWrapDemo({super.key});

  @override
  State<MyWrapDemo> createState() => _MyWrapDemoState();
}

class _MyWrapDemoState extends State<MyWrapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wrap'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(3),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              Button('爱龙堡干红葡萄酒AOP级赤霞丹红', onPressed: () {}),
              Button('macmini内存升级', onPressed: () {}),
              Button('外星人x14', onPressed: () {}),
              Button('宁美国度', onPressed: () {}),
              Button('二手笔记本电脑', onPressed: () {}),
              Button('n95诺基亚', onPressed: () {}),
            ],
          ),
        ));
  }
}

class Button extends StatelessWidget {
  String text;

  void Function()? onPressed;

  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(255, 236, 233, 233)),
            foregroundColor: MaterialStateProperty.all(Colors.black45)),
        onPressed: onPressed,
        child: Text(text));
  }
}
