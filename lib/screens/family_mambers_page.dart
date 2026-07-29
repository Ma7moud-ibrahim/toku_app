import 'package:flutter/material.dart';
import 'package:toku_app/components/item_numbers_family.dart';
import 'package:toku_app/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key, required this.color});

  final Color color;
  final List<Numbers> familyMembers = const [
    Numbers(
      enName: 'one',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    Numbers(
      enName: 'two',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    Numbers(
      enName: 'three',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    Numbers(
      enName: 'four',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
    ),
    Numbers(
      enName: 'five',
      image: 'assets/images/numbers/number_five.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_five_sound.mp3',
    ),
    Numbers(
      enName: 'six',
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
    ),
    Numbers(
      enName: 'seven',
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    Numbers(
      enName: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_nine_sound.mp3',
    ),
    Numbers(
      enName: 'ten',
      image: 'assets/images/numbers/number_ten.png',
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
          return Item(numbers: familyMembers[index], color: color);
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
