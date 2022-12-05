import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  final Map arguments;
  const HeroPage({super.key, required this.arguments});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('详情页面')),
      body: ListView(
        children: [
          Hero(
              tag: widget.arguments['imageUrl'],
              child: Image.network(widget.arguments['imageUrl'])),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.arguments['title'],
              style: const TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
