import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.numbers, required this.color});
  final Numbers numbers;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(color: Colors.grey, child: Image.asset(numbers.image)),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(numbers.jpName, style: TextStyle(color: Colors.white)),
                Text(numbers.enName, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(numbers.sound));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
