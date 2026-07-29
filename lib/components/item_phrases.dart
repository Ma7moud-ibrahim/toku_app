import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrases.dart';

class ItemPhrases extends StatelessWidget {
  const ItemPhrases({super.key, required this.mempers, required this.color});
  final FamilyMembers mempers;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 10),
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(mempers.jpName, style: TextStyle(color: Colors.white)),
                Text(mempers.enName, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();

                player.play(AssetSource(mempers.sound));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
