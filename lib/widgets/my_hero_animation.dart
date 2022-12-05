import 'package:flutter/material.dart';
import 'package:flutter_lesson/testdata/list_data.dart';

class MyHeroAnimationWidgetDemo extends StatefulWidget {
  const MyHeroAnimationWidgetDemo({super.key});

  @override
  State<MyHeroAnimationWidgetDemo> createState() =>
      _MyHeroAnimationWidgetDemoState();
}

class _MyHeroAnimationWidgetDemoState extends State<MyHeroAnimationWidgetDemo> {
  List<Widget> _getListData() {
    var tempList = myTestListData.map((e) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/hero',
              arguments: {'imageUrl': e['imageUrl'], 'title': e['title']});
        },
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromRGBO(233, 233, 233, 0.9))),
          child: Column(children: [
            Hero(tag: e['imageUrl'], child: Image.network(e['imageUrl'])),
            const SizedBox(
              height: 12,
            ),
            Text(
              e['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ]),
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero 动画')),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10),
        children: _getListData(),
      ),
    );
  }
}
