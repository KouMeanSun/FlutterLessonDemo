import 'package:flutter/material.dart';

class MyRowAndColumn extends StatefulWidget {
  const MyRowAndColumn({super.key});

  @override
  State<MyRowAndColumn> createState() => _MyRowAndColumnState();
}

class _MyRowAndColumnState extends State<MyRowAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RowAndColumn'),
      ),
      body: Center(
        // child: Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: const [
        //     Icon(Icons.home, color: Colors.red),
        //     Icon(Icons.search, color: Colors.blue),
        //     Icon(Icons.send, color: Colors.orange),
        //   ],),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home, color: Colors.red),
            Icon(Icons.search, color: Colors.blue),
            Icon(Icons.send, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
