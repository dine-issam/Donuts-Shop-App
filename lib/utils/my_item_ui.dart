import 'package:flutter/material.dart';

class MyItemUi extends StatefulWidget {
  const MyItemUi({super.key, required this.title, required this.imagePath});
  final String title;
  final String imagePath;

  @override
  State<MyItemUi> createState() => _MyItemUiState();
}

class _MyItemUiState extends State<MyItemUi> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isPressed ? Colors.white : Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                border: isPressed
                    ? Border.all(width: 0.9, color: Colors.black)
                    : null,
              ),
              child: Image.asset(widget.imagePath),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
