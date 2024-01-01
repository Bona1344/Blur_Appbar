import 'package:blurry_scroll/Model/group-list.dart';
import 'package:blurry_scroll/Pages/group_page.dart';
import 'package:blurry_scroll/Pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<GroupList>(
    create: (context) => GroupList(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/groups': (context) => const GroupPage(),
      },
    );
  }
}
