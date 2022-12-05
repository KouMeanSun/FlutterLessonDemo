import 'dart:async';

import 'package:flutter/material.dart';

class MyAnimationListWidget extends StatefulWidget {
  const MyAnimationListWidget({super.key});

  @override
  State<MyAnimationListWidget> createState() => _MyAnimationListWidgetState();
}

class _MyAnimationListWidgetState extends State<MyAnimationListWidget> {
  final globalKey = GlobalKey<AnimatedListState>();
  bool flag = true;
  List<String> list = ["第一条数据", "第二条数据"];
  Widget _buildItem(index) {
    return ListTile(
      title: Text(list[index]),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: (() {
          _deleteItem(index);
        }),
      ),
    );
  }

  _deleteItem(index) {
    if (flag == true) {
      flag == false;
      var removeItem = _buildItem(index);
      list.removeAt(index);
      globalKey.currentState?.removeItem(
          index,
          (context, animation) => ScaleTransition(
                //opacity: animation,
                scale: animation,
                child: removeItem,
              ));
      Timer.periodic(const Duration(milliseconds: 600), ((timer) {
        flag = true;
        timer.cancel();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationList'),
      ),
      body: AnimatedList(
          key: globalKey,
          initialItemCount: list.length,
          itemBuilder: ((context, index, animation) {
            return FadeTransition(
              opacity: animation,
              child: _buildItem(index),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          list.add("我是新增加的数据");
          globalKey.currentState?.insertItem(list.length - 1);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
