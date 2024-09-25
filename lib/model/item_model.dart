import 'package:flutter/material.dart';

class ItemModel {
  final List _itemList = [
    // [itemName, itemIcon,]
    ["Donuts", "assets/icons/donut.png"],
    ["Burger", "assets/icons/burger.png"],
    ["Smoothie", "assets/icons/smoothie.png"],
    ["PanCake", "assets/icons/pancakes.png"],
    ["Pizza", "assets/icons/pizza.png"]
  ];
  final List<Map<String, dynamic>> _itemMenu = const [
    {
      "Donuts": [
        // [itemName,itemPrice,itemImage,itemColor,secondColor,priceColor]
        [
          "Ice Cream",
          "36",
          "assets/images/icecream_donut.png",
          Color.fromARGB(255, 181, 222, 255),
          Color.fromARGB(255, 171, 240, 249),
          Colors.lightBlue
        ],
        [
          "Strawberry",
          "45",
          "assets/images/strawberry_donut.png",
          Color.fromARGB(255, 255, 191, 187),
          Color.fromARGB(255, 255, 161, 155),
          Colors.red
        ],
        [
          "Grape Ape",
          "84",
          "assets/images/grape_donut.png",
          Color.fromARGB(255, 243, 146, 178),
          Color.fromARGB(255, 243, 118, 160),
          Colors.pink
        ],
        [
          "Chocolate",
          "95",
          "assets/images/chocolate_donut.png",
          Color.fromARGB(255, 175, 172, 172),
          Color.fromARGB(255, 131, 129, 129),
          Colors.grey
        ],
      ]
    },
  ];
  get itemList => _itemList;
  get itemMenu => _itemMenu;
}
