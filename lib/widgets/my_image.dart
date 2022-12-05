import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image"),
      ),
      // body: Container(
      //   color: Colors.white,
      //   child: Center(
      //     child: ListView(
      //       children: [
      //         Container(
      //           width: MediaQuery.of(context).size.width,
      //           height: MediaQuery.of(context).size.width,
      //           decoration: BoxDecoration(
      //               color: Colors.yellow,
      //               borderRadius: BorderRadius.circular(
      //                   MediaQuery.of(context).size.width),
      //               image: const DecorationImage(
      //                   image: NetworkImage(
      //                       "https://www.itying.com/themes/itying/images/ionic4.png"),
      //                   fit: BoxFit.cover)),
      //         ),

      //       ],
      //     ),
      //   ),
      // ),
      // body: Container(
      //   color: Colors.white,
      //   child: Center(
      //     child: ClipOval(
      //       child: Image.network(
      //         "https://www.itying.com/themes/itying/images/ionic4.png",
      //         width: 150,
      //         height: 150,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // ),
      // body: Container(
      //   color: Colors.white,
      //   child: const Center(
      //     child: CircleAvatar(
      //       radius: 100,
      //       backgroundImage:
      //           NetworkImage("https://www.itying.com/images/flutter/3.png"),
      //     ),
      //   ),
      // ),
      body: Container(
          color: Colors.black26,
          width: 150,
          height: 150,
          child: Center(
            child: ClipOval(
              child: Image.asset(
                "images/snap.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
