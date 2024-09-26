import 'package:flutter/material.dart';

class MyItemInfo extends StatelessWidget {
  const MyItemInfo(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.percentage,
      required this.color});
  final String title;
  final String subtitle;

  final String percentage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.9),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Text(
              percentage,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
