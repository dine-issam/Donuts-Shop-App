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
  final Map<String, dynamic> _itemMenu = const {
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
    ],
  };
  final Map<String, Map<String, Map<String, dynamic>>> _itemInfo = {
    "Donuts": {
      "Ice Cream": {
        "Color": const Color.fromARGB(255, 181, 222, 255),
        "Sugar": ['8 Gram', '2%'],
        "Salt": ['8 Gram', '3%'],
        "Fat": ['8 Gram', '12%'],
        "Energy": ["140 Kcal", "40%"],
        "Description":
            "The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth! "
      },
      "Strawberry": {
        "Color": const Color.fromARGB(255, 255, 191, 187),
        "Sugar": ['7 Gram', '3%'],
        "Salt": ['9 Gram', '9%'],
        "Fat": ['12 Gram', '13%'],
        "Energy": ["180 Kcal", "50%"],
        "Description":
            "The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth! "
      },
      "Grape Ape": {
        "Color": const Color.fromARGB(255, 243, 146, 178),
        "Sugar": ['6 Gram', '4%'],
        "Salt": ['10 Gram', '0%'],
        "Fat": ['11 Gram', '14%'],
        "Energy": ["190 Kcal", "80%"],
        "Description":
            "The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth! "
      },
      "Chocolate": {
        "Color": const Color.fromARGB(255, 175, 172, 172),
        "Sugar": ['5 Gram', '5%'],
        "Salt": ['11 Gram', '1%'],
        "Fat": ['9 Gram', '15%'],
        "Energy": ["100 Kcal", "60%"],
        "Description":
            "The Sweet And Subtle Salty Combo Of Chocolate Meets Caramel. Introduce The Caramel Duo To Your Mouth! "
      },
    },
  };
  get itemList => _itemList;
  get itemMenu => _itemMenu;
  get itemInfo => _itemInfo;
}
