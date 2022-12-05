import 'package:flutter/material.dart';

class MySearchPage extends StatefulWidget {
  final String title;
  const MySearchPage({super.key, this.title = 'Search Page'});

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(child: Text('组件居中')),
    );
  }
}
