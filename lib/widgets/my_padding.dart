import 'package:flutter/material.dart';

class MyPadding extends StatefulWidget {
  const MyPadding({super.key});

  @override
  State<MyPadding> createState() => _MyPaddingState();
}

class _MyPaddingState extends State<MyPadding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
      ),
      body: Container(
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.itying.com/images/flutter/3.png',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.itying.com/images/flutter/4.png',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.itying.com/images/flutter/5.png',
                    fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                    'https://www.itying.com/images/flutter/6.png',
                    fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
