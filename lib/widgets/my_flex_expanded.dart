import 'package:flutter/material.dart';

class MyFlexAndExpanded extends StatefulWidget {
  const MyFlexAndExpanded({super.key});

  @override
  State<MyFlexAndExpanded> createState() => _MyFlexAndExpandedState();
}

class _MyFlexAndExpandedState extends State<MyFlexAndExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexAndExpanded'),
      ),
      body: Center(
        // child: Flex(
        //   direction: Axis.horizontal,
        //   children: const [
        //     Expanded(
        //         flex: 1,
        //         child: Icon(
        //           Icons.home,
        //           color: Colors.red,
        //         )),
        //     Expanded(
        //         flex: 1,
        //         child: Icon(
        //           Icons.search,
        //           color: Colors.red,
        //         )),
        //   ],
        // ),
        // child: Column(
        //   children: const [
        //     Expanded(flex: 2, child: Icon(Icons.home, color: Colors.red)),
        //     Expanded(
        //       flex: 1,
        //       child: Icon(Icons.search, color: Colors.orange),
        //     )
        //   ],
        // ),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 180,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.network(
                              'https://www.itying.com/images/flutter/3.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.network(
                              'https://www.itying.com/images/flutter/4.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
