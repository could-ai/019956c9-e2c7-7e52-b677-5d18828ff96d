import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/chat_screen.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Placeholder for 10 products
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text('Product ${index + 1}'),
              subtitle: const Text('Description of the product goes here.'),
              trailing: const Text('\$19.99'),
              onTap: () {
                // Navigate to product details screen
              },
            ),
          );
        },
      ),
    );
  }
}
