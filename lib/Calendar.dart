import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        centerTitle: true,
      ),
      body: TableCalendar(
        focusedDay: focusedDay,
        firstDay: DateTime(1971),
        lastDay: DateTime(2071),
        calendarFormat: format,
        onFormatChanged: (CalendarFormat _format){
          setState(() {
            format = _format;
          });
        },
      ),
    );
  }
}
