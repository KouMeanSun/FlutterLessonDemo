import 'package:flutter/material.dart';
import 'package:flutter_lesson/testdata/list_data.dart';

class MyGridViewWidget extends StatefulWidget {
  const MyGridViewWidget({super.key});

  @override
  State<MyGridViewWidget> createState() => _MyGridViewWidgetState();
}

class _MyGridViewWidgetState extends State<MyGridViewWidget> {
  List<Widget> _getListData() {
    var tempList = myTestListData.map((value) => Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
          child: Column(
            children: [
              Image.network(value['imageUrl']),
              const SizedBox(
                height: 12,
              ),
              Text(
                value['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ));
    return tempList.toList();
  }

  Widget _getItemData(context, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(233, 233, 233, 0.9))),
      child: Column(
        children: [
          Image.network(myTestListData[index]['imageUrl']),
          const SizedBox(
            height: 12,
          ),
          Text(
            myTestListData[index]['title'],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: Center(
        // child: GridView.count(
        //   crossAxisCount: 3,
        //   childAspectRatio: 1,
        //   children: const [
        //     Icon(Icons.home),
        //     Icon(Icons.ac_unit),
        //     Icon(Icons.search),
        //     Icon(Icons.settings),
        //     Icon(Icons.airport_shuttle),
        //     Icon(Icons.all_inclusive),
        //     Icon(Icons.beach_access),
        //     Icon(Icons.cake),
        //     Icon(Icons.circle),
        //   ],
        // ),
        // child: GridView.extent(
        //   maxCrossAxisExtent: 80,
        //   childAspectRatio: 1,
        //   children: const [
        //     Icon(Icons.home),
        //     Icon(Icons.ac_unit),
        //     Icon(Icons.search),
        //     Icon(Icons.settings),
        //     Icon(Icons.airport_shuttle),
        //     Icon(Icons.all_inclusive),
        //     Icon(Icons.beach_access),
        //     Icon(Icons.cake),
        //     Icon(Icons.circle),
        //   ],
        // ),
        // child: GridView.count(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   padding: const EdgeInsets.all(10),
        //   children: _getListData(),
        // ),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: myTestListData.length,
            itemBuilder: _getItemData),
      ),
    );
  }
}
