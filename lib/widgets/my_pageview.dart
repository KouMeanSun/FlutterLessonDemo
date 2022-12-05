import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_banner.dart';
import 'package:flutter_lesson/widgets/my_page_view_keep_alive.dart';

class MyPageViewDemo extends StatefulWidget {
  const MyPageViewDemo({super.key});

  @override
  State<MyPageViewDemo> createState() => _MyPageViewDemoState();
}

class _MyPageViewDemoState extends State<MyPageViewDemo> {
  int itemCount = 10;
  final List<Widget> _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < itemCount; i++) {
      _list.add(MyPage(text: '$i'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "banner",
                  child: Text("轮播图"),
                ),
                const PopupMenuItem(
                  value: "storePageView",
                  child: Text("缓存PageView"),
                ),
              ];
            },
            onSelected: (value) => {
              if (value == "banner")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyBannerDemo(),
                      ))
                }
              else if (value == "storePageView")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageViewKeepAlive(),
                      ))
                }
            },
            onCanceled: () => {},
          )
        ],
      ),
      // body: PageView(children: [
      //   Center(
      //     child: Text('0', style: Theme.of(context).textTheme.headline1),
      //   ),
      //   Center(
      //     child: Text('1', style: Theme.of(context).textTheme.headline1),
      //   ),
      //   Center(
      //     child: Text('2', style: Theme.of(context).textTheme.headline1),
      //   ),
      //   Center(
      //     child: Text('3', style: Theme.of(context).textTheme.headline1),
      //   ),
      //   Center(
      //     child: Text('4', style: Theme.of(context).textTheme.headline1),
      //   ),
      //   Center(
      //     child: Text('5', style: Theme.of(context).textTheme.headline1),
      //   ),
      // ]),
      // body: PageView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: ((context, index) {
      //     return MyPage(text: '$index');
      //   }),
      //   itemCount: itemCount,
      // ),
      body: PageView(
        scrollDirection: Axis.vertical,
        onPageChanged: ((index) {
          print(index);
          print(_list.length);
          if (index + 2 == _list.length) {
            setState(() {
              for (int i = 0; i < itemCount; i++) {
                _list.add(MyPage(text: '$i'));
              }
            });
          }
        }),
        children: _list,
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  final String text;

  const MyPage({super.key, required this.text});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.text, style: Theme.of(context).textTheme.headline1),
    );
  }
}
