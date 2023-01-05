import 'package:assignment/presentation/HomeScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(
    DevicePreview(
      enabled: kProfileMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411,683),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assignment',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreeen()
      ),
    );
  }
}