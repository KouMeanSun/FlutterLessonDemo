import 'package:flutter/material.dart';
import 'package:flutter_lesson/main.dart';
import 'package:flutter_lesson/widgets/my_bottom_navigation_bar.dart';

class MyAppBarTabBarTabBarView extends StatefulWidget {
  const MyAppBarTabBarTabBarView({super.key});

  @override
  State<MyAppBarTabBarTabBarView> createState() =>
      _MyAppBarTabBarTabBarViewState();
}

class _MyAppBarTabBarTabBarViewState extends State<MyAppBarTabBarTabBarView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.animation?.value == _tabController.index) {
        print('当前索引:${_tabController.index}');
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('menu pressed');
          },
        ),
        title: const Text('AppBarTabBar'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "BottomNavigationBar",
                  child: Text("BottomNavigationBar"),
                ),
                const PopupMenuItem(
                  value: "horizontal",
                  child: Text("其他"),
                ),
              ];
            },
            onSelected: (value) => {
              if (value == "BottomNavigationBar")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyBottomNavigationBar(),
                      ))
                }
            },
            onCanceled: () => {},
          )
        ],
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(child: Text("热门")),
          Tab(child: Text("推荐")),
          Tab(child: Text("视频"))
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text("热门"),
          Text("推荐"),
          Text("视频"),
        ],
      ),
    );
  }
}
