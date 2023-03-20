import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List Logo = [
    "lib/utils/images/oldtown.jpg",
    "lib/utils/images/senorita.jpg",
    "lib/utils/images/enemy.jpg",
    "lib/utils/images/montero.jpg",
  ];
  List name = [
    "Old Town Road",
    "Senorita",
    "Enemy",
    "Montero",
  ];

  List Logo2 = [
    "lib/utils/images/oldtown.jpg",
    "lib/utils/images/senorita.jpg",
    "lib/utils/images/enemy.jpg",
    "lib/utils/images/montero.jpg",
  ];
  List name2 = [
    "Old Town Road",
    "Senorita",
    "Enemy",
    "Montero",
  ];

  List Logo3 = [
    "lib/utils/images/oldtown.jpg",
    "lib/utils/images/senorita.jpg",
    "lib/utils/images/enemy.jpg",
    "lib/utils/images/montero.jpg",
  ];
  List name3 = [
    "Old Town Road",
    "Senorita",
    "Enemy",
    "Montero",
  ];

  Widget RFY(int index, String name, String Logo) {
    return Container(
      height: 125,
      width: 150,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset("${Logo}", fit: BoxFit.fitHeight),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: ListTile(
                title: Text(
                  "${name}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
