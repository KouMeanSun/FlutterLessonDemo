import 'package:flutter/material.dart';
import 'package:flutter_lesson/utils/my_keep_alive_wrapper.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(() {
      if (_tabController.animation?.value == _tabController.index) {
        print('index:${_tabController.index}');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(255, 253, 247, 247),
            elevation: 10,
            title: SizedBox(
              height: 30,
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                tabs: const [
                  Tab(
                      child: Text(
                    "热门",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "推荐",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "视频",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "关注",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "发现",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "抗疫",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "国际",
                    style: TextStyle(color: Colors.black),
                  )),
                  Tab(
                      child: Text(
                    "深圳",
                    style: TextStyle(color: Colors.black),
                  )),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
            KeepAliveWrapper(
                child: ListView(
              children: const [
                ListTile(title: Text("第1个tab")),
                ListTile(title: Text("第2个tab")),
                ListTile(title: Text("第3个tab")),
                ListTile(title: Text("第4个tab")),
                ListTile(title: Text("第5个tab")),
                ListTile(title: Text("第6个tab")),
                ListTile(title: Text("第7个tab")),
                ListTile(title: Text("第8个tab")),
                ListTile(title: Text("第9个tab")),
                ListTile(title: Text("第10个tab")),
                ListTile(title: Text("第11个tab")),
                ListTile(title: Text("第12个tab")),
                ListTile(title: Text("第13个tab")),
                ListTile(title: Text("第14个tab")),
                ListTile(title: Text("第15个tab")),
                ListTile(title: Text("第16个tab")),
                ListTile(title: Text("第17个tab")),
                ListTile(title: Text("第18个tab")),
                ListTile(title: Text("第19个tab")),
              ],
            )),
          ],
        ));
  }
}
