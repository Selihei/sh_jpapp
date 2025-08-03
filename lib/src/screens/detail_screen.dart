import 'package:flutter/material.dart';
import 'package:sh_jpapp/src/data/products_list.dart'; 

class FoodDetailScreen extends StatelessWidget {
  final FoodItem item;

  const FoodDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
        backgroundColor: const Color(0xFF8C5BEA),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(item.assetPath, height: 200),
            ),
            const SizedBox(height: 24),
            Text(
              item.sectitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              "\$${item.price}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(
              " ${item.likes} likes",
              style: const TextStyle(fontSize: 16, color: Colors.pink),
            ),
            const SizedBox(height: 24),
            if (item.description != null)
              Text(
                item.description!,
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}