import 'package:flutter/material.dart';
import 'package:toku_app/components/item_numbers_family.dart';
import 'package:toku_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Numbers> numbers = const [
    Numbers(
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
    ),
    Numbers(
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
    ),
    Numbers(
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
      jpName: 'ichi',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
    ),
    Numbers(
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
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
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(numbers: numbers[index], color: Colors.blue);
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
