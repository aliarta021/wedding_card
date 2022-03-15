import 'package:date_count_down/countdown.dart';
import 'package:flutter/material.dart';
import 'package:date_count_down/date_count_down.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _controller?.repeat(reverse: true);
    _animation = Tween(begin: 72.0, end: 70.0).animate(_controller!)
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
    return SizedBox(
      height: MediaQuery.of(context).size.height - 50,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          const SizedBox(
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://s6.uupload.ir/files/wedding-1836315_1920_ddcb.jpg'),
            ),
          ),
          Center(
            child: Wrap(
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
                  child: Text('مسعود' + ' ' + 'و' + ' ' + 'فروزان',
                      style: TextStyle(
                          fontFamily: 'Aviny',
                          color: Colors.white,
                          fontSize: 58)),
                ),
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.spaceBetween,
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: [
                      DateContainer(animation: _animation,time: '',textTime: 'روز',),
                      DateContainer(animation: _animation,time: '1',textTime: 'ساعت',),
                      DateContainer(animation: _animation,time: '1',textTime: 'دقیقه',),
                      DateContainer(animation: _animation,time: '1',textTime: 'ثانیه',),
                    ],
                    direction: Axis.horizontal,
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

class DateContainer extends StatelessWidget {
  DateContainer({
    required Animation? animation,
    required this.time,
    required this.textTime,
    Key? key,
  }) : _animation = animation, super(key: key);

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
              Text(time, style: const TextStyle(
                fontSize: 16,fontFamily: 'IranSans',color: Colors.white,
              ), ),
              Text(textTime, style: const TextStyle(
                fontFamily: 'IranSans', fontSize: 16, color: Colors.white,
              ),),
            ],
          ),
        ));
  }
}
