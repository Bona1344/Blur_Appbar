import 'package:blurry_scroll/Components/group_tile.dart';
import 'package:blurry_scroll/Model/group-list.dart';
import 'package:blurry_scroll/Model/group_model.dart';
import 'package:flutter/material.dart';

class GroupGrid extends StatelessWidget {
  const GroupGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      /*
                   -----------------------THE GRID OF GROUPS-------------------------------------------------------------
                      
                  
                      
                  CONTAINERS FOR EACH GROUP SORTED IN GRID FORMAT
                   HAS TWO COLUMNS AND MAYBE 5 ROW
                  HERE I AM GOING TO USE CREATe A MODEL         
                  
                  
                  
                  */
      child: GridView.builder(
        shrinkWrap: true,
        // this stops this grid view from scrolling
        physics: const NeverScrollableScrollPhysics(),
        // itemcount add the number of containers or group tiles i want to have
        itemCount: GroupList().groupList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // the cross axis count gives the number of columns you want on your grid
          crossAxisCount: 2,
          //childAspectRatio is the ratio of the width vs the height of each tile
          childAspectRatio: 1.3 / 1,
        ),
        itemBuilder: (context, index) {
          //create a groups
          GroupModel group = GroupList().groupList[index];
          return GroupTile(
            groupModel: group,
          );
        },
      ),
    );
  }
}
