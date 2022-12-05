import 'package:flutter/material.dart';
import 'package:flutter_lesson/widgets/my_const_appbar.dart';

class MyStackAlignAndPositioned extends StatefulWidget {
  const MyStackAlignAndPositioned({super.key});

  @override
  State<MyStackAlignAndPositioned> createState() =>
      _MyStackAlignAndPositionedState();
}

class _MyStackAlignAndPositionedState extends State<MyStackAlignAndPositioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackAlignAndPositioned'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "constappbar",
                  child: Text("固定导航条案例"),
                ),
              ];
            },
            onSelected: (value) => {
              if (value == "constappbar")
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyConstAppBarDemo(),
                      ))
                }
            },
            onCanceled: () => {},
          )
        ],
      ),
      // body: Container(
      //   width: 120,
      //   height: 120,
      //   color: Colors.blue.shade50,
      //   child: const Align(
      //     alignment: Alignment.topRight,
      //     child: FlutterLogo(
      //       size: 20,
      //     ),
      //   ),
      // )
      // body: Container(
      //   height: 400,
      //   width: 300,
      //   color: Colors.red,
      //   child: Stack(
      //     children: const [
      //       Align(
      //         alignment: Alignment(1, 0.2),
      //         child: Icon(
      //           Icons.home,
      //           size: 40,
      //           color: Colors.yellow,
      //         ),
      //       ),
      //       Align(
      //         alignment: Alignment.center,
      //         child: Icon(
      //           Icons.search,
      //           size: 30,
      //           color: Colors.white,
      //         ),
      //       ),
      //       Align(
      //         alignment: Alignment.bottomRight,
      //         child: Icon(
      //           Icons.settings,
      //           size: 50,
      //           color: Colors.green,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: const [
            Positioned(
                left: 10,
                child: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.white,
                )),
            Positioned(
                left: 100,
                bottom: 0,
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.yellow,
                )),
            Positioned(
              right: 0,
              child: Icon(Icons.settings_applications,
                  size: 30, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
