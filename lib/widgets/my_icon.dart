import 'package:flutter/material.dart';
import 'package:flutter_lesson/utils/utils_my_icon.dart';

class MyIconWidget extends StatefulWidget {
  const MyIconWidget({super.key});

  @override
  State<MyIconWidget> createState() => _MyIconWidgetState();
}

class _MyIconWidgetState extends State<MyIconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.search,
                color: Colors.red,
                size: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.category,
                color: Colors.yellow,
                size: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.shop,
                color: Colors.green,
                size: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                MyIcons.weixin,
                color: Colors.green,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                MyIcons.weibo,
                color: Colors.green,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                MyIcons.zhifubao,
                color: Colors.green,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                MyIcons.douyin,
                color: Colors.green,
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                MyIcons.wo,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
