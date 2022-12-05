import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_home_page.dart';

class MyUserPage extends StatefulWidget {
  final Map arguments;
  const MyUserPage({super.key, required this.arguments});

  @override
  State<MyUserPage> createState() => _MyUserPageState();
}

class _MyUserPageState extends State<MyUserPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Text('User'),
        ElevatedButton(
            onPressed: (() {
              Navigator.of(context).pop();
            }),
            child: const Text('返回')),
        ElevatedButton(
            onPressed: (() {
              Navigator.of(context).pushReplacementNamed('/category');
            }),
            child: const Text('替换')),
        ElevatedButton(
            onPressed: (() {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (BuildContext context) {
                return const MyHomePage();
              }), (route) => false);
            }),
            child: const Text('返回到根路由')),
      ]),
    );
  }
}
