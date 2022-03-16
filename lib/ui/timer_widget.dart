import 'dart:async';
import 'package:flutter/material.dart';

const oneSec = Duration(seconds: 1);

class TimerWidget extends StatefulWidget {

  TimerWidget({
    this.textStyle,
    Key? key,
  }) : super(key: key);

  int timerSeconds = DateTime.fromMillisecondsSinceEpoch(DateTime.friday * 1000)
      .difference(DateTime.now())
      .inSeconds;
  final TextStyle? textStyle;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late int _start;
  late Timer _timer;
  @override
  void initState() {
    _start = widget.timerSeconds;
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) => setState(
            () {
          _start = _start - 1;
        },
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Duration duration = Duration(seconds: _start);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' : ${duration.inSeconds.remainder(60).toString().padLeft(2, "0")}',
          style: widget.textStyle ?? Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 18, color: widget.timerSeconds.isNegative ? Colors.red : null),
          textDirection: TextDirection.ltr,
        ),
        Text(
          ' : ${duration.inMinutes.remainder(60).toString().padLeft(2, "0")}',
          style: widget.textStyle ?? Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 18, color: widget.timerSeconds.isNegative ? Colors.red : null),
          textDirection: TextDirection.ltr,
        ),
        Text(
          duration.inHours.remainder(60).toString().padLeft(2, '0'),
          style: widget.textStyle ?? Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontSize: 18, color: widget.timerSeconds.isNegative ? Colors.red : null),
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}
