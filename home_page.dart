import 'package:flutter/material.dart';
import 'cadastro_produto_page.dart';
import 'listagem_produtos_page.dart';
import 'troca_venda_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feira Digital de Negócios Locais')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CadastroProdutoPage())),
              child: const Text('Cadastrar Produto'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ListagemProdutosPage())),
              child: const Text('Listagem de Produtos'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => TrocaVendaPage())),
              child: const Text('Troca e Venda'),
            ),
          ],
        ),
      ),
    );
  }
}
