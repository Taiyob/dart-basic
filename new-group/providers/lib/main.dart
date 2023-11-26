import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/model/provider/toduprovider.dart';

import 'Page/HomeScreen.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => tudoprovider(),),
    ],
      child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}