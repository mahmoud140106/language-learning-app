import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              // final player = AudioPlayer();
              // // player.setSourceAsset('assets/sounds/colors/black.wav');
              // // player.play(AssetSource('sounds/colors/black.wav'));
              // player.play(AssetSource(item.sound));
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Icon(
          //     Icons.play_arrow,
          //     color: Colors.white,
          //     size: 30,
          //   ),
          // ),
        ),
      ],
    );
  }
}
