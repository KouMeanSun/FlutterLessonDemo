import 'package:flutter/material.dart';

class MyKeyWieget extends StatefulWidget {
  const MyKeyWieget({super.key});

  @override
  State<MyKeyWieget> createState() => _MyKeyWiegetState();
}

class _MyKeyWiegetState extends State<MyKeyWieget> {
  final GlobalKey _key1 = GlobalKey();
  final GlobalKey _key2 = GlobalKey();
  final GlobalKey _key3 = GlobalKey();
  List<Widget> list = [];
  @override
  void initState() {
    super.initState();
    list = [
      Box(key: _key1, color: Colors.blue),
      Box(key: _key2, color: Colors.red),
      Box(key: _key3, color: Colors.orange),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key'),
      ),
      body: Center(
          child: MediaQuery.of(context).orientation == Orientation.portrait
              ? Column(children: list)
              : Row(
                  children: list,
                )),
      floatingActionButton: FloatingActionButton(
        // onPressed: (() => setState(() {
        //       list.shuffle();
        //     })),
        onPressed: (() {
          //1.获取子组件的状态，调用子组件的属性
          var state = _key1.currentState as _BoxState;
          print(state._count);
          //2. 获取子组件的属性，
          var box = _key1.currentWidget as Box;
          print(box.color);
          //3.获取子组件渲染属性
          var renderBox = _key1.currentContext?.findRenderObject() as RenderBox;

          print(renderBox.size);
        }),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class Box extends StatefulWidget {
  Color color;
  Box({super.key, required this.color});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color)),
        onPressed: () => setState(() {
          _count++;
        }),
        child: Center(
          child: Text('$_count'),
        ),
      ),
    );
  }
}
