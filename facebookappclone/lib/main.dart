import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      // ignore: missing_return
      builder: (context, widget) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget),
            defaultScale: true,
            minWidth: 450,
            defaultName: MOBILE,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE)
            ]
        );
      },
      home: HomePage(),
    );
  }
}