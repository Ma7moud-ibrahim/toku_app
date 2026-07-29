import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_mambers_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Category(
            color: Colors.blue,
            text: 'Numpers',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          SizedBox(height: 10),
          Category(
            color: Color.fromARGB(255, 115, 187, 246),
            text: 'Family Mempars',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage(color: Color(0xff46322B));
                  },
                ),
              );
            },
          ),
          SizedBox(height: 10),
          Category(
            color: Colors.blue,
            text: 'Colors',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage(color: Colors.cyan);
                  },
                ),
              );
            },
          ),
          SizedBox(height: 10),
          Category(
            color: Colors.blue,
            text: 'Phrases',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrassesPage(
                      color: Color.fromARGB(255, 234, 70, 207),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
