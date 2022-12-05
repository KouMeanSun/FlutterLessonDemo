import 'package:flutter/material.dart';

class MyButtonDemo extends StatefulWidget {
  const MyButtonDemo({super.key});

  @override
  State<MyButtonDemo> createState() => _MyButtonDemoState();
}

class _MyButtonDemoState extends State<MyButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  print('点击了普通按钮');
                },
                child: const Text('普通按钮')),
            TextButton(
                onPressed: () {
                  print('点击了文本按钮');
                },
                child: const Text('文本按钮')),
            OutlinedButton(
                onPressed: () {
                  print("边框按钮");
                },
                child: const Text('边框按钮')),
            IconButton(
                onPressed: () {
                  print('点击了 icon 按钮');
                },
                icon: const Icon(Icons.thumb_up)),
            ElevatedButton.icon(
                onPressed: () {
                  print('点击了 ElevatedButton.icon');
                },
                icon: const Icon(Icons.send),
                label: const Text('发送')),
            OutlinedButton.icon(
                onPressed: (() {
                  print('点击了 OutlinedButton.icon');
                }),
                icon: const Icon(Icons.add),
                label: const Text('添加')),
            TextButton.icon(
                onPressed: (() {
                  print('点击了 TextButton.icon');
                }),
                icon: const Icon(Icons.info),
                label: const Text('详情')),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 80,
                width: 200,
                color: Colors.yellow,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    print('点击了 可控制 大小 的按钮');
                  },
                  child: const Text('宽度高度'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  height: 60,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    child: const Text('自适应按钮1'),
                    onPressed: () {
                      print('点击了自适应按钮');
                    },
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 60,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(20),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    child: const Text('圆角'),
                    onPressed: () {
                      print('圆角');
                    },
                  ),
                ))
              ],
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(20),
              height: 50,
              child: OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    side: MaterialStateProperty.all(
                        const BorderSide(width: 1, color: Colors.red))),
                onPressed: () {
                  print('修改了边框的按钮');
                },
                child: const Text('注册配置边框'),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
