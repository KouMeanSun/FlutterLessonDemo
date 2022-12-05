import 'package:flutter/material.dart';

class MyTabHomePage extends StatefulWidget {
  const MyTabHomePage({super.key});

  @override
  State<MyTabHomePage> createState() => _MyTabHomePageState();
}

class _MyTabHomePageState extends State<MyTabHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home'),
    );
  }
}
