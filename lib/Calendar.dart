import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);


  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  DateTime _focused = DateTime.now();
  DateTime? _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calendar',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: TableCalendar(
        // 以下必ず設定が必要
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        selectedDayPredicate: (day) {
          return isSameDay(_selected, day);
        },
        onDaySelected: (selected, focused){
          if (!isSameDay(_selected, selected)) {
            setState(() {
              _selected = selected;
              _focused = focused;
            });
          }
        },
        focusedDay: _focused,

      ),
    );
  }
}
