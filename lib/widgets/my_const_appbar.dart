import 'package:flutter/material.dart';

class MyConstAppBarDemo extends StatefulWidget {
  const MyConstAppBarDemo({super.key});

  @override
  State<MyConstAppBarDemo> createState() => _MyConstAppBarDemoState();
}

class _MyConstAppBarDemoState extends State<MyConstAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('固定导航条'),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 45),
            children: const [
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
              ListTile(
                title: Text('11111111'),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            height: 40,
            width: size.width,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: const Text(
                "你好Flutter",
                style: TextStyle(fontSize: 20, color: Colors.yellow),
              ),
            ),
          )
        ],
      ),
    );
  }
}
