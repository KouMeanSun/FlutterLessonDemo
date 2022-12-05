import 'package:flutter/material.dart';

class MyHorizontalListViewWidget extends StatefulWidget {
  const MyHorizontalListViewWidget({super.key});

  @override
  State<MyHorizontalListViewWidget> createState() =>
      _MyHorizontalListViewWidgetState();
}

class _MyHorizontalListViewWidgetState
    extends State<MyHorizontalListViewWidget> {
  List<Widget> _initListView() {
    List<Widget> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(ListTile(
        title: Text("我是列表:$i"),
      ));
    }
    return list;
  }

  List<String> listData = [
    "我是第一条数据",
    "我是第二条数据",
    "我是第三条数据",
    "我是第三条数据",
    "我是第四条数据",
    "我是第五条数据",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('水平列表'),
      ),
      body: Container(
        color: Colors.white,
        // child: ListView(
        //scrollDirection: Axis.horizontal,
        // children: [
        //   Container(
        //     width: 180,
        //     color: Colors.red,
        //   ),
        //   Container(
        //     width: 180,
        //     color: Colors.orange,
        //     child: Column(
        //       children: [
        //         Image.network('https://www.itying.com/images/flutter/1.png'),
        //         const Text('我是一个文本')
        //       ],
        //     ),
        //   ),
        //   Container(
        //     width: 180,
        //     color: Colors.blue,
        //   ),
        //   Container(
        //     width: 180,
        //     color: Colors.deepOrange,
        //   )
        // ],
        //children: _initListView(),

        // ),
        child: ListView.builder(
            itemCount: listData.length,
            itemBuilder: ((context, index) => ListTile(
                  title: Text(listData[index]),
                ))),
      ),
    );
  }
}
