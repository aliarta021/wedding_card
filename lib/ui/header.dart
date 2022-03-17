import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const oneSec = Duration(seconds: 1);

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);
  int seconds = DateTime.parse('2022-03-27 18:00:00')
      .difference(DateTime.now())
      .inSeconds;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  late int _start;
  late Timer _timer;

  AnimationController? _controller;
  Animation? _animation;
  late Animation _forwardAnimation;

  @override
  void initState() {
    _start = widget.seconds;
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          _start = _start - 1;
        },
      ),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _controller?.repeat(reverse: true);
    _animation = Tween(begin: 92.0, end: 90.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _forwardAnimation = Tween(begin: 5.0, end: 68.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(seconds: _start);
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          SizedBox(
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    'https://s6.uupload.ir/files/wedding-1836315_1920_ddcb.jpg'),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Center(
                        child: Text('شما و خانواده محترم دعوت هستید',
                            style: TextStyle(
                              fontFamily: 'IranSans',
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    const Center(
                      child: Text('مسعود' ' ' 'و' ' ' 'فروزان',
                          style: TextStyle(
                              fontFamily: 'Aviny',
                              color: Colors.white,
                              fontSize: 58)),
                    ),
                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.spaceBetween,
                        spacing: 12.0,
                        runSpacing: 4.0,
                        children: [
                          DateContainer(
                            animation: _animation,
                            time: duration.inDays
                                .remainder(30)
                                .toString()
                                .padLeft(2, "0"),
                            textTime: 'روز',
                          ),
                          DateContainer(
                            animation: _animation,
                            time: duration.inHours
                                .remainder(60)
                                .toString()
                                .padLeft(2, "0"),
                            textTime: 'ساعت',
                          ),
                          DateContainer(
                            animation: _animation,
                            time: duration.inMinutes
                                .remainder(60)
                                .toString()
                                .padLeft(2, "0"),
                            textTime: 'دقیقه',
                          ),
                          DateContainer(
                            animation: _animation,
                            time: duration.inSeconds
                                .remainder(60)
                                .toString()
                                .padLeft(2, "0"),
                            textTime: 'ثانیه',
                          ),
                        ],
                        direction: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 85),
                  width: 300,
                  height: 200,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: _forwardAnimation.value),
                      child: const Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.white,
                        size: 38,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DateContainer extends StatelessWidget {
  DateContainer({
    required Animation? animation,
    required this.time,
    required this.textTime,
    Key? key,
  })  : _animation = animation,
        super(key: key);

  final Animation? _animation;
  String time;
  String textTime;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xffff9ff3).withOpacity(0.7),
          shape: BoxShape.circle,
        ),
        width: _animation?.value,
        height: _animation?.value,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'IranSans',
                  color: Colors.white,
                ),
              ),
              Text(
                textTime,
                style: const TextStyle(
                  fontFamily: 'IranSans',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
