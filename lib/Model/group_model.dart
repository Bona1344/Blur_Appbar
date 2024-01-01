class GroupModel {
  String imageEmoji;
  String name;
  bool isChecked;
  GroupModel({
    required this.name,
    required this.imageEmoji,
    this.isChecked = false,
  });
}
