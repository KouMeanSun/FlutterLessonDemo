import 'package:flutter/material.dart';

class MyNamedRoutePage extends StatefulWidget {
  const MyNamedRoutePage({super.key});

  @override
  State<MyNamedRoutePage> createState() => _MyNamedRoutePageState();
}

class _MyNamedRoutePageState extends State<MyNamedRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('命名路由'),
      ),
      body: Container(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/user',
                  arguments: {"title": "where are you from"});
            },
            child: const Text("跳转到user页面")),
      ),
    );
  }
}
