import 'package:flutter/material.dart';

class DateInfo extends StatelessWidget {
  const DateInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff828282),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
            height: 68,
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
                  child: Divider(color: Colors.white,),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(Icons.alarm_outlined, size: 18,color: Colors.white,),
                          Text('18:00\n تا خاموشی ستاره ها',style: TextStyle(fontFamily: 'IranSans', fontSize: 16, color: Colors.white),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(Icons.calendar_today_outlined, size: 20,color: Colors.white,),
                          Text('دوشنبه 8\n فروردین 1401',style: TextStyle(fontFamily: 'IranSans', fontSize: 16, color: Colors.white),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),

                  ],
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
                const SizedBox(height: 18,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(color: Colors.white,),
                ),
                const SizedBox(height: 18,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(Icons.alarm_outlined, size: 18,color: Colors.white,),
                          Text('18:00\n تا خاموشی ستاره ها',style: TextStyle(fontFamily: 'IranSans', fontSize: 16, color: Colors.white),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Icon(Icons.calendar_today_outlined, size: 20,color: Colors.white,),
                          Text('یکشنبه 7\n فروردین 1401',style: TextStyle(fontFamily: 'IranSans', fontSize: 16, color: Colors.white),textAlign: TextAlign.center,),
                        ],
                      ),
                    ),

                  ],
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
                const SizedBox(height: 18,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(color: Colors.white,),
                ),
                const SizedBox(height: 18,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
