import 'package:flutter/material.dart';

class MyMenuUi extends StatelessWidget {
  const MyMenuUi(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.itemImage,
      required this.itemColor,
      required this.secondColor,
      required this.priceColor});
  final String itemName;
  final String itemPrice;
  final String itemImage;
  final Color itemColor;
  final Color secondColor;
  final Color priceColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: itemColor, borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.only(
                      right: 25, left: 25, bottom: 7, top: 7),
                  decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Text(
                    "\$$itemPrice",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: priceColor),
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              itemImage,
              width: 80,
              height: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              itemName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text("Dunkin's"),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  Text(
                    "Add",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
