import 'package:flutter/material.dart';

class MyVerticalListView extends StatefulWidget {
  const MyVerticalListView({super.key});

  @override
  State<MyVerticalListView> createState() => _MyVerticalListViewState();
}

class _MyVerticalListViewState extends State<MyVerticalListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("垂直列表"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              ListTile(
                leading: Image.network(
                    "https://www.itying.com/images/flutter/1.png"),
                title: const Text('华北黄淮高温雨今起强势登场'),
                subtitle: const Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
              ),
              const Divider(),
              ListTile(
                leading: Image.network(
                    'https://www.itying.com/images/flutter/2.png'),
                title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
                subtitle: const Text('中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降温'),
              ),
              const Divider(),
              ListTile(
                trailing: Image.network(
                    'https://www.itying.com/images/flutter/3.png'),
                title: const Text('华北黄淮高温雨今起强势登场'),
                subtitle: const Text('中国天气网讯 21日开始，华北黄淮高温雨今起强势登场'),
              ),
              const Divider(),
              ListTile(
                leading: Image.network(
                    'https://www.itying.com/images/flutter/5.png'),
                title: const Text('鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当'),
              ),
              const Divider(),
              Image.network('https://www.itying.com/images/flutter/1.png'),
              Container(
                height: 44,
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                  '我是一个标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Divider(),
              Image.network('https://www.itying.com/images/flutter/2.png'),
              Container(
                height: 44,
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                  "我是标题2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
