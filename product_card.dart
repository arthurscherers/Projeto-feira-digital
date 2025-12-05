import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final VoidCallback? onTap;

  const ProductCard({required this.name, required this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text('R\$ $price'),
        onTap: onTap,
      ),
    );
  }
}
