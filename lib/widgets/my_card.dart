import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_cart_list_detail.dart';
import 'package:flutter_lesson/widgets/my_circleavatar.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "listdetail",
                  child: Text("图文列表示例"),
                ),
                const PopupMenuItem(
                  value: "CircleAvata",
                  child: Text("圆形图片"),
                )
              ];
            },
            onSelected: (value) => {
              if (value == "listdetail")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyCartListDetailDemo(),
                      ))
                }
              else if (value == "CircleAvata")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyCircleAvatarDemo(),
                      ))
                }
            },
            onCanceled: () => {},
          )
        ],
      ),
      body: ListView(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 20,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    '张三',
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Text('高级工程师'),
                ),
                Divider(),
                ListTile(
                  title: Text('电话：13888888888'),
                ),
                ListTile(
                  title: Text('地址：北京市朝阳区'),
                )
              ],
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            elevation: 20,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                ListTile(
                  title: Text(
                    '李斯',
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Text('资深工程师'),
                ),
                Divider(),
                ListTile(
                  title: Text('电话：13111111111'),
                ),
                ListTile(
                  title: Text('地址：北京市海淀区'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
