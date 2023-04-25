import 'package:newfluttercontainer/FancyContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FancyContainer();
    // return  MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Information',
    //   theme: ThemeData(
    //     // useMaterial3: true,
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: FancyContainer(),
    //   builder:(context,child){
    //     final mediaQueryData = MediaQuery.of(context);
    //     final scale = mediaQueryData.textScaleFactor.clamp(0.8, 0.9);
    //     return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: scale), child: child!);
    //   },
    //
    // );
  }
}



