import 'package:cp_ntc/layouts/pages/activity_page.dart';
import 'package:cp_ntc/layouts/pages/workout_page.dart';
import 'package:flutter/material.dart';

import 'layouts/pages/feed_page.dart';
import 'layouts/pages/mail_tray_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FeedPage(),
      onGenerateRoute: (settings) {
        // named route で、transitionの設定をしたかったため onGenerateRoute を利用
        // https://stackoverflow.com/questions/56792479/flutter-animate-transition-to-named-route
        Widget page;
        switch (settings.name) {
          case '/feed':
            page = FeedPage();
            break;
          case '/activity':
            page = ActivityPage();
            break;
          case '/workout':
            page = WorkoutPage();
            break;
          case '/mail_tray':
            page = MailTrayPage();
            break;
        }

        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => page,
//          transitionsBuilder: (_, __, ___, ____) {
//            return
//          }
        );
      },
    );
  }
}

