import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:food_delivery/intro/intro1.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffFFA451),
        // primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        body: Builder(
          // Builder:
          builder: (context) => Center(
            child: ElevatedButton(
              child: Text("Click Me"),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Intro1())),
            ),
          ),
        ),
      ),
    );
  }
}
