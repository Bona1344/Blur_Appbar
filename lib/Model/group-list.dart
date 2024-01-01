import 'package:blurry_scroll/Model/group_model.dart';
import 'package:flutter/material.dart';

class GroupList extends ChangeNotifier {
  //list of group
  List<GroupModel> groupList = [
    // grp 1
    GroupModel(name: " Fraternity", imageEmoji: "lib/image/muscle.png"),
    GroupModel(name: "Sorority", imageEmoji: "lib/image/emoji.png"),
    GroupModel(name: "Active Club", imageEmoji: "lib/image/ball.png"),
    GroupModel(name: "Sport Team", imageEmoji: "lib/image/ManU.png"),
    GroupModel(
        name: "Students Organization", imageEmoji: "lib/image/runner.png"),
    GroupModel(
        name: "Roommates or Housemates", imageEmoji: "lib/image/house.png"),
    GroupModel(name: "Family", imageEmoji: "lib/image/Chelsea.png"),
    GroupModel(name: "Friends Group", imageEmoji: "lib/image/emoji.png"),
    GroupModel(name: "Girls Scout Troop", imageEmoji: "lib/image/ball.png"),
    GroupModel(name: "Boys Scout Troop", imageEmoji: "lib/image/soccer.png"),
  ];
}
