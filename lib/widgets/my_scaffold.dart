import 'package:flutter/material.dart';
import 'package:flutter_lesson/pages/tabs/category.dart';
import 'package:flutter_lesson/pages/tabs/home.dart';
import 'package:flutter_lesson/pages/tabs/message.dart';
import 'package:flutter_lesson/pages/tabs/setting.dart';
import 'package:flutter_lesson/pages/tabs/user.dart';

class MyScaffoldDemo extends StatefulWidget {
  const MyScaffoldDemo({super.key});

  @override
  State<MyScaffoldDemo> createState() => _MyScaffoldDemoState();
}

class _MyScaffoldDemoState extends State<MyScaffoldDemo> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    MyTabHomePage(),
    MyCategoryPage(),
    MyMessagePage(),
    MySettingPage(),
    MyUserPage(
      arguments: {"title": "你好user"},
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scoffold')),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: const Text('高老师'),
            accountEmail: const Text('867427526@qq.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage:
                  NetworkImage('https://www.itying.com/images/flutter/3.png'),
            ),
            decoration: const BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://www.itying.com/images/flutter/2.png'),
                    fit: BoxFit.cover)),
            otherAccountsPictures: [
              Image.network("https://www.itying.com/images/flutter/4.png"),
              Image.network("https://www.itying.com/images/flutter/5.png"),
              Image.network("https://www.itying.com/images/flutter/6.png")
            ],
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text('个人中心'),
          ),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('系统设置'),
          )
        ]),
      ),
      endDrawer: const Text('RightDrawer'),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red, //选中颜色
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: "用户")
          ]),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 4),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          onPressed: (() {
            setState(() {
              _currentIndex = 2;
            });
          }),
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
