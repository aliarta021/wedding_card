import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class DateInfo extends StatelessWidget {
  const DateInfo({Key? key}) : super(key: key);
  static const oneSec = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2d3436),
      padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 18),
      child: Column(
        children: [
          const Text(
            'جشن عروسی',
            style: TextStyle(
                fontSize: 32,
                fontFamily: 'IranSans',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 58,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  'به نام آنکه عشق را آفرید',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IranSans',
                    fontSize: 18,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.alarm_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                          Text(
                            '18:00\n تا خاموشی ستاره ها',
                            style: TextStyle(
                                fontFamily: 'IranSans',
                                fontSize: 16,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text(
                            'دوشنبه 8\n فروردین 1401',
                            style: TextStyle(
                                fontFamily: 'IranSans',
                                fontSize: 16,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'آدرس',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'IranSans',
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.place_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      'بندر پل، منزل‌ آقای سلیمانی',
                      style: TextStyle(
                          fontFamily: 'IranSans',
                          fontSize: 16,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: const Color(0xffff9ff3).withOpacity(0.8),
                  ),
                  child: InkWell(
                    onTap: () {
                      MapsLauncher.launchCoordinates(27.006178, 55.738483);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'مکان یابی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IranSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.place_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'به سنت عشق گرد هم می آییم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IranNastaliq',
                    fontSize: 48,
                  ),
                ),
                const Text(
                  'آنجا که دوست داشتن تنها کلام زندگیست',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IranNastaliq',
                    fontSize: 48,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.alarm_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                          Text(
                            '18:00\n تا خاموشی ستاره ها',
                            style: TextStyle(
                                fontFamily: 'IranSans',
                                fontSize: 16,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.calendar_today_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          Text(
                            'یکشنبه 7\n فروردین 1401',
                            style: TextStyle(
                                fontFamily: 'IranSans',
                                fontSize: 16,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'آدرس',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'IranSans',
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.place_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      'خیبان فلان جنب کوچه فلان',
                      style: TextStyle(
                          fontFamily: 'IranSans',
                          fontSize: 16,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: const Color(0xffff9ff3).withOpacity(0.8),
                  ),
                  child: InkWell(
                    onTap: () {
                      MapsLauncher.launchCoordinates(27.006178, 55.738483);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'مکان یابی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IranSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.place_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                const Text(
                  'به سنت عشق گرد هم می آییم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IranNastaliq',
                    fontSize: 48,
                  ),
                ),
                const Text(
                  'آنجا که دوست داشتن تنها کلام زندگیست',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IranNastaliq',
                    fontSize: 48,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.favorite,
                      size: 18,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'حضور گرمتان قوت قلبی است برای ما',
                      style: TextStyle(
                          fontFamily: 'IranSans',
                          fontSize: 12,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 8,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
