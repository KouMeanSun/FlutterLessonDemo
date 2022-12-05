import 'package:flutter/material.dart';
import 'package:flutter_lesson/pages/my_search.dart';
import 'package:flutter_lesson/widgets/my_ios_style.dart';
import 'package:flutter_lesson/widgets/my_named_route.dart';

class MyRouteDemo extends StatefulWidget {
  const MyRouteDemo({super.key});

  @override
  State<MyRouteDemo> createState() => _MyRouteDemoState();
}

class _MyRouteDemoState extends State<MyRouteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('路由'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "iOSStyle",
                  child: Text("iOS风格主题路由"),
                )
              ];
            },
            onSelected: (value) => {
              if (value == "iOSStyle")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyiOSStyleDemo(),
                      ))
                }
            },
            onCanceled: () => {},
          )
        ],
      ),
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const MySearchPage(
                        title: '你好中国',
                      ))));
            },
            child: const Text('Go Search Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const MyNamedRoutePage())));
            },
            child: const Text('命名路由'),
          ),
        ],
      )),
    );
  }
}
