import 'provider/calendar_notifier.dart';
import 'provider/direction_notifier.dart';
import 'provider/map_notifier.dart';
import 'view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ConcordiAround',
        home: MultiProvider(providers: [
          ChangeNotifierProvider(
            create: (context) => MapNotifier(),
          ),
          ChangeNotifierProvider(create: (context) => DirectionNotifier()),
          ChangeNotifierProvider(create: (context) => CalendarNotifier())
        ], child: HomePage()));
  }
}
