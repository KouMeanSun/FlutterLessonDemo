import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_horizontal_list_view.dart';
import 'package:flutter_lesson/widgets/my_vertical_list_view.dart';

class MyListViewWidget extends StatefulWidget {
  const MyListViewWidget({super.key});

  @override
  State<MyListViewWidget> createState() => _MyListViewWidgetState();
}

class _MyListViewWidgetState extends State<MyListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('listView'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "vertical",
                  child: Text("垂直图文列表"),
                ),
                const PopupMenuItem(
                  value: "horizontal",
                  child: Text("水平列表"),
                ),
              ];
            },
            onSelected: (value) => {
              if (value == "vertical")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyVerticalListView(),
                      ))
                }
              else if (value == "horizontal")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MyHorizontalListViewWidget(),
                      ))
                }
              else
                {}
            },
            onCanceled: () => {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.assessment,
                  color: Colors.red,
                ),
                title: Text('全部订单'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.green,
                ),
                title: Text('待付款'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.local_car_wash,
                  color: Colors.orange,
                ),
                title: Text('待收获'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.lightGreen,
                ),
                title: Text('我的收藏'),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.black26,
                ),
                title: Text('在线客服'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
