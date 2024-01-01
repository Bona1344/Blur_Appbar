# blurry_scroll

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


//my code before chatGPT edit
import 'dart:ui';
import 'package:blurry_scroll/Components/group_grid.dart';
import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({super.key});

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  final ScrollController _scrollController = ScrollController();
  double _blur = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.red.shade800, Colors.red.shade800],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
/*
-----------------------GROUP   APPBAR--------------------------------------------------------------------------------
*/
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.2),
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.red.shade800.withOpacity(0.00001),
              ),
            ),
          ),
        ),
/*
-----------------------GROUP   BODY--------------------------------------------------------------------------------
*/
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            controller: _scrollController,
            children: const [
              //FIRST TEXT THAT IS BOLD
              Text(
                "What group are you switching?",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //SECOND TEXT THAT IS LESS BOLD
              Text(
                "Dive chat is a communities with am existing group chat.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              /*
                   -----------------------THE GRID OF GROUPS-------------------------------------------------------------
                      
                  
                      
                  CONTAINERS FOR EACH GROUP SORTED IN GRID FORMAT
                   HAS TWO COLUMNS AND MAYBE 5 ROW
                  HERE I AM GOING TO USE CREATe A MODEL         
                  
                  
                  
                  */
              GroupGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
