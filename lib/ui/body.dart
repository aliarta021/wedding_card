import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _controller?.repeat(reverse: true);
    _animation = Tween(begin: 100.0, end: 94.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }
  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'یکشنبه و دوشنبه \n هفتم و هشتم فروردین ماه 1401 ',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'IranSans',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text('1401.1.7  , 1401.1.8',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'IranSans',
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 18,
          ),
          Container(
              constraints: const BoxConstraints(maxWidth: 110, minHeight: 100),
              child: CachedNetworkImage(
                imageUrl: 'https://dl.weddingcart.ir/img/base/groom.jpg',
                width: _animation?.value,
              )),
          const Text(
            'آقای داماد',
            style: TextStyle(fontFamily: 'IranSans', fontSize: 16),
          ),
          const Text(
            'مسعود ملاحی',
            style: TextStyle(color: Color(0xffff9ff3), fontSize: 26),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 110, minHeight: 100),
            child: CachedNetworkImage(
              imageUrl: 'https://dl.weddingcart.ir/img/base/bride.jpg',
              width: _animation?.value,
            ),
          ),
          const Text(
            'عروس خانوم',
            style: TextStyle(fontFamily: 'IranSans', fontSize: 16),
          ),
          const Text(
            'فروزان سلیمانی',
            style: TextStyle(color: Color(0xffff9ff3), fontSize: 26),
          ),
          const SizedBox(
            height: 78,
          ),
        ],
      ),
    );
  }
}
