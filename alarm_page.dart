import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/app/data/data.dart';
import 'package:flutter_alarm_clock/app/data/theme_data.dart';
class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}
@override
  class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Alarm',
            style: TextStyle(
              fontFamily: 'avenir',
              fontWeight: FontWeight.w700,
              color: CustomColors.primaryTextColor,
              fontSize: 24),
            ),
          Expanded(
            child: ListView(
              children: alarms.map((alarm) {
              return Container(
                margin: const EdgeInsets.only(bottom: 32),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.red],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.4),
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4,4),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(
                            Icons.label,
                            color: Colors.white,
                            size: 24,
                          ),
                      SizedBox(width: 8),
                      Text(
                          'Office',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'avenir'),
                      ),
                      ],
                      ),
                      Switch(
                        onChanged: (bool value) {},
                        value: true,
                        activeColor: Colors.white,
                      ),
                    ],
                    ),
                    Text(
                      'Mon-Fri',
                      style: TextStyle(
                        color: Colors.white, fontFamily: 'avenir'),
                      ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                      '07:00 AM',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'avenir',
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                      ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: Colors.white,
                    ),
                    ],
                  ),
                  ],
                ),
              );
            }).followedBy([
              Container(
                color: CustomColors.clockBG,
                height: 100,
                child: Column(
                  children: <Widget>[
                        Image.asset(
                          'assets/add_alarm.png',
                          scale: 1.5,
                        ),
                    SizedBox(height: 8),
                    Text(
                      'Add alarm',
                      style: TextStyle(color: Colors.pink, fontFamily: 'avenir'),
                    ),
                  ],
                ),
              ),
              ]).toList(),
        ),
          ),
        ],
      ),
    );
  }
}