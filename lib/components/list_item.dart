import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item_info.dart';
import 'package:language_learning_app/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Color(0xFFEF9235),
      color: color,
      child: Row(
        children: [
          // number.image == null
          //     ? const SizedBox()
          //     :
          Container(
            color: const Color(0xFFFFF6DC),
            child: Image.asset(item.image!),
            // child: Image.asset(number.image!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}
