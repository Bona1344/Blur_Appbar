import 'package:blurry_scroll/Components/my_checkbox.dart';
import 'package:blurry_scroll/Model/group_model.dart';
import 'package:flutter/material.dart';

class GroupTile extends StatefulWidget {
  final GroupModel groupModel;

  const GroupTile({
    super.key,
    required this.groupModel,
  });

  @override
  State<GroupTile> createState() => _GroupTileState();
}

bool isChecked = false;

class _GroupTileState extends State<GroupTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      //decorating each group tile
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image of group
                Image.asset(
                  widget.groupModel.imageEmoji,
                  width: 50,
                ),

                // custom CHECKBOX
                const MyCheckBox(),
              ],
            ),

            //name of group
            Text(
              widget.groupModel.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
