import 'package:flutter/material.dart';
import 'package:mis_lab4/services/exam_service.dart';
import 'package:mis_lab4/screens/calendar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExamProvider(),
      child: MaterialApp(
        title: 'Распоред за јануарскиот испитен рок',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: CalendarScreen(),
      ),
    );
  }
}