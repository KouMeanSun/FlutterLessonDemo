import 'package:flutter/material.dart';
import 'package:flutter_lesson/testdata/list_data.dart';
import 'package:flutter_lesson/widgets/my_banner.dart';

class PageViewKeepAlive extends StatefulWidget {
  const PageViewKeepAlive({super.key});

  @override
  State<PageViewKeepAlive> createState() => _PageViewKeepAliveState();
}

class _PageViewKeepAliveState extends State<PageViewKeepAlive> {
  List<Widget> children = <Widget>[];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < myTestListData.length; i++) {
      children.add(BannerPicture(url: myTestListData[i]["imageUrl"]));
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build ");
    return Scaffold(
      appBar: AppBar(
        title: const Text('缓存PageView'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: PageView(
              children: children,
            ),
          ),
          const Text('Text 组件')
        ],
      ),
    );
  }
}
