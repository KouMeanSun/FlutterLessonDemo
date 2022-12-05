import 'package:flutter/material.dart';

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({super.key});

  @override
  State<MyTextWidget> createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: Container(
          color: Colors.white,
          child: const Center(
            child: Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              overflow: TextOverflow.clip,
              textScaleFactor: 1.2,
              maxLines: 2,
              "我是Text",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.dashed,
                  wordSpacing: 1,
                  letterSpacing: 2,
                  fontStyle: FontStyle.italic,
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 80, 55, 53),
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
