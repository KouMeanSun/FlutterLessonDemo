import 'package:flutter/material.dart';

class MyCartListDetailDemo extends StatefulWidget {
  const MyCartListDetailDemo({super.key});

  @override
  State<MyCartListDetailDemo> createState() => _MyCartListDetailDemoState();
}

class _MyCartListDetailDemoState extends State<MyCartListDetailDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card图文列表示例'),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      'https://www.itying.com/images/flutter/2.png',
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: const Text("新华社最新消息"),
                  subtitle: const Text('公元2022年11月卡塔尔世界杯........'),
                )
              ],
            ),
          ),
          Card(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      'https://www.itying.com/images/flutter/2.png',
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  title: const Text("新华社最新消息"),
                  subtitle: const Text('公元2022年11月卡塔尔世界杯........'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
