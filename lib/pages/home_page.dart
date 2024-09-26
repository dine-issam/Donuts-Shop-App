import 'package:donuts_app/model/item_model.dart';
import 'package:donuts_app/pages/info_page.dart';
import 'package:donuts_app/utils/my_item_ui.dart';
import 'package:donuts_app/utils/my_menu_ui.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final itemModel = ItemModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.menu),
        actions: const [Icon(Icons.person)],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                  text: "I want to ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 30),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Eat",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                        ))
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 95,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemModel.itemList.length,
                itemBuilder: (context, index) {
                  var itemList = itemModel.itemList[index];
                  return MyItemUi(
                    imagePath: itemList[1],
                    title: itemList[0],
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: itemModel.itemMenu['Donuts'].length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    var item = itemModel.itemMenu['Donuts'][index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoPage(
                                      itemName: item[0],
                                      itemImage: item[2],
                                      itemPrice: item[1],
                                    )));
                      },
                      child: MyMenuUi(
                        itemName: item[0],
                        itemPrice: item[1],
                        itemImage: item[2],
                        itemColor: item[3],
                        secondColor: item[4],
                        priceColor: item[5],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.9, color: Colors.black),
                    borderRadius: BorderRadius.circular(15)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2 Items | \$45",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Delivery Charges included",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Text(
                      "View Cart",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
