import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_dialog_widget.dart';
import 'package:ftoast/ftoast.dart';

class MyDialogDemo extends StatefulWidget {
  const MyDialogDemo({super.key});

  @override
  State<MyDialogDemo> createState() => _MyDialogDemoState();
}

class _MyDialogDemoState extends State<MyDialogDemo> {
  _alertDialog() async {
    var result = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text('提示'),
            content: const Text('确定要删除吗?'),
            actions: [
              TextButton(
                  onPressed: (() {
                    print('点击了取消');
                    Navigator.of(context).pop('cancel');
                  }),
                  child: const Text('取消')),
              TextButton(
                  onPressed: (() {
                    print('点击了确定');
                    Navigator.of(context).pop('ok');
                  }),
                  child: const Text('确定')),
            ],
          );
        }));
    print('result:$result');
  }

  _simpleDialog() async {
    var result = await showDialog(
        barrierDismissible: true,
        context: context,
        builder: ((context) {
          return SimpleDialog(
            title: const Text('请选择内容'),
            children: [
              SimpleDialogOption(
                child: const Text('option A'),
                onPressed: () {
                  print('option A');
                  Navigator.of(context).pop('A');
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text('option B'),
                onPressed: () {
                  print('option B');
                  Navigator.of(context).pop('B');
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text('option C'),
                onPressed: () {
                  print('option C');
                  Navigator.of(context).pop('C');
                },
              ),
            ],
          );
        }));
    print('result:$result');
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: ((context) {
          return SizedBox(
            height: 220,
            child: Column(children: [
              ListTile(
                title: const Text('分享 A'),
                onTap: (() {
                  Navigator.pop(context, "分享 A");
                }),
              ),
              Divider(),
              ListTile(
                title: const Text('分享 B'),
                onTap: (() {
                  Navigator.pop(context, "分享 B");
                }),
              ),
              Divider(),
              ListTile(
                title: const Text('分享 C'),
                onTap: (() {
                  Navigator.pop(context, "分享 C");
                }),
              ),
              Divider(),
            ]),
          );
        }));
    print(result);
  }

  _toast() {
    FToast.toast(context,
        msg: 'This is Msg',
        subMsg: 'Welcome to use FTost. This is Sub Msg',
        subMsgStyle: const TextStyle(color: Colors.green, fontSize: 14));
  }

  _myDialog() async {
    await showDialog(
        context: context,
        builder: ((context) {
          return MyDialogWidget(
            title: '标题',
            onClosed: () {
              print('点击了关闭');
              Navigator.pop(context);
            },
            content: '我是内容',
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: ListView(children: [
          ElevatedButton(
              onPressed: _alertDialog, child: const Text('AlertDialog')),
          ElevatedButton(
              onPressed: _simpleDialog, child: const Text('SimpleDialog')),
          ElevatedButton(
              onPressed: _modelBottomSheet, child: const Text('BottomSheet')),
          ElevatedButton(onPressed: _toast, child: const Text('Fluttertoast')),
          ElevatedButton(onPressed: _myDialog, child: const Text('MyDialog')),
        ]),
      ),
    );
  }
}
