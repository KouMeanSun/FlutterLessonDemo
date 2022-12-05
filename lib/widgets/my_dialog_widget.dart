import 'dart:async';
import 'package:flutter/material.dart';

class MyDialogWidget extends Dialog {
  String title;
  String content;
  Function()? onClosed;
  MyDialogWidget(
      {Key? key, required this.title, this.content = "", this.onClosed})
      : super(key: key);

  _showTimer(context) {
    Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      print('关闭');
      Navigator.pop(context);
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(title),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: onClosed,
                      child: const Icon(Icons.close),
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text(content, textAlign: TextAlign.left),
            )
          ]),
        ),
      ),
    );
  }
}
