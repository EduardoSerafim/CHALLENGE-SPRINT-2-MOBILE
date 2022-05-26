import 'package:flutter/material.dart';

class StandardCardList extends StatelessWidget {
  final String label1;
  final String label2;
  final String label3;
  final String content1;
  final String content2;
  final String content3;
  

  StandardCardList({
    required this.label1,
    required this.label2,
    required this.label3,
    required this.content1,
    required this.content2,
    required this.content3
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black, width: 2)),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label1,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(content1, style: const TextStyle(fontSize: 18)),
          Text(label2,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(content2, style: const TextStyle(fontSize: 18)),
          Text(label3,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(content3, style: const TextStyle(fontSize: 18))
        ],
      ),
    );
  }
}
