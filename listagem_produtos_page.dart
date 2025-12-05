import 'package:flutter/material.dart';

class ListagemProdutosPage extends StatelessWidget {
  final List<Map<String, String>> produtos = [
    {'nome': 'Tomate', 'preco': '5.00'},
    {'nome': 'Artesanato', 'preco': '20.00'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produtos Disponíveis')),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(produtos[index]['nome']!),
            subtitle: Text('R\$ ${produtos[index]['preco']}'),
          );
        },
      ),
    );
  }
}
