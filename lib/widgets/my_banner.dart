import 'dart:async';

import 'package:flutter/material.dart';

class MyBannerDemo extends StatefulWidget {
  const MyBannerDemo({super.key});

  @override
  State<MyBannerDemo> createState() => _MyBannerDemoState();
}

class _MyBannerDemoState extends State<MyBannerDemo> {
  List<Widget> _bannerList = [];
  @override
  void initState() {
    List listData = [
      {
        "imageUrl": 'https://www.itying.com/images/flutter/1.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/2.png',
      },
      {
        "imageUrl": 'https://www.itying.com/images/flutter/3.png',
      }
    ];
    for (int i = 0; i < listData.length; i++) {
      _bannerList.add(BannerPicture(url: listData[i]['imageUrl']));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banner'),
      ),
      body: ListView(
        children: [Swiper(pageList: _bannerList)],
      ),
    );
  }
}

class Swiper extends StatefulWidget {
  final double width;
  final double height;
  final List<Widget> pageList;
  const Swiper(
      {super.key,
      this.width = double.infinity,
      this.height = 200,
      required this.pageList});

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  late Timer timer;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    const timeout = Duration(seconds: 2);
    timer = Timer.periodic(timeout, (timer) {
      //跳转
      _pageController.animateToPage(
          (_currentPageIndex + 1) % (widget.pageList.length),
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index % (widget.pageList.length);
                });
              },
              itemCount: 10000,
              itemBuilder: ((context, index) {
                return widget.pageList[index % (widget.pageList.length)];
              })),
        ),
        Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              children: List.generate(
                  widget.pageList.length,
                  (index) => Container(
                        margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPageIndex == index
                                ? Colors.blue
                                : Colors.grey),
                      )).toList(),
            ))
      ],
    );
  }
}

class BannerPicture extends StatefulWidget {
  final String url;
  final double width;
  final double height;
  const BannerPicture(
      {super.key,
      required this.url,
      this.width = double.infinity,
      this.height = 200});

  @override
  State<BannerPicture> createState() => _BannerPictureState();
}

class _BannerPictureState extends State<BannerPicture> {
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Image.network(
        widget.url,
        fit: BoxFit.cover,
      ),
    );
  }
}
