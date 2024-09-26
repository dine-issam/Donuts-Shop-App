import 'package:donuts_app/model/item_model.dart';
import 'package:donuts_app/utils/my_item_info.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  final String itemName;
  final String itemImage;
  final String itemPrice;
  InfoPage({super.key, required this.itemName, required this.itemImage,required this.itemPrice});

  final item = ItemModel().itemInfo['Donuts'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item[itemName]['Color'],
      appBar: AppBar(
        backgroundColor: item[itemName]['Color'],
        title: const Text(
          "Ice cream",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20),
            child: Image.asset(itemImage),
          )),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Ingredients",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyItemInfo(
                            title: "Sugar",
                            subtitle: item[itemName]['Sugar'][0],
                            percentage: item[itemName]['Sugar'][1],
                            color: const Color.fromARGB(255, 130, 199, 255)),
                        MyItemInfo(
                            title: "Salt",
                            subtitle: item[itemName]['Salt'][0],
                            percentage: item[itemName]['Salt'][1],
                            color: const Color.fromARGB(255, 167, 128, 169)),
                        MyItemInfo(
                            title: "Fat",
                            subtitle: item[itemName]['Fat'][0],
                            percentage: item[itemName]['Fat'][1],
                            color: const Color.fromARGB(255, 243, 175, 241)),
                        MyItemInfo(
                            title: "Energy",
                            subtitle: item[itemName]['Energy'][0],
                            percentage: item[itemName]['Energy'][1],
                            color: const Color.fromARGB(255, 240, 111, 154)),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        "Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ),
                    Text(
                      item[itemName]['Description'],
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, top: 10, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.9, color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$$itemPrice",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Delivery Charges included",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                            const Text(
                              "Add to Cart",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
