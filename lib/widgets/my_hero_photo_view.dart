import 'package:flutter/material.dart';
import 'package:flutter_lesson/testdata/list_data.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MyPhotoViewWidgetDemo extends StatefulWidget {
  const MyPhotoViewWidgetDemo({super.key});

  @override
  State<MyPhotoViewWidgetDemo> createState() => _MyPhotoViewWidgetDemoState();
}

class _MyPhotoViewWidgetDemoState extends State<MyPhotoViewWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('图片预览'),
      ),
      // body: Container(
      //     child: PhotoView(
      //   imageProvider: const AssetImage("assets/images/6.png"),
      // )),
      body: PhotoViewGallery.builder(
        itemCount: myTestListData.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(myTestListData[index]["imageUrl"]));
        },
        scrollDirection: Axis.horizontal,
        backgroundDecoration: const BoxDecoration(color: Colors.black),
        pageController: PageController(initialPage: 1),
        scrollPhysics: const BouncingScrollPhysics(),
      ),
    );
  }
}
