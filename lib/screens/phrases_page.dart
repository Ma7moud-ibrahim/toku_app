import 'package:flutter/material.dart';
import 'package:toku_app/components/item_phrases.dart';
import 'package:toku_app/models/phrases.dart';

class PhrassesPage extends StatelessWidget {
  const PhrassesPage({super.key, required this.color});

  final Color color;
  final List<FamilyMembers> familyMembers = const [
    FamilyMembers(
      enName: 'one',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    FamilyMembers(
      enName: 'two',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    FamilyMembers(
      enName: 'three',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    FamilyMembers(
      enName: 'four',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    FamilyMembers(
      enName: 'five',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    FamilyMembers(
      enName: 'six',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    FamilyMembers(
      enName: 'seven',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    FamilyMembers(
      enName: 'nine',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    FamilyMembers(
      enName: 'ten',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemPhrases(mempers: familyMembers[index], color: color);
        },
      ),
    );
  }

  //   List<Widget> getList(List<Numbers> numbers) {
  //     List<Widget> itemList = [];
  //     for (int i = 0; i < numbers.length; i++) {
  //       itemList.add(Item(numbers: numbers[i]));
  //     }
  //     return itemList;
  //   }
  // }
}
