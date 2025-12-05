import 'package:flutter/material.dart';

class CadastroProdutoPage extends StatefulWidget {
  @override
  _CadastroProdutoPageState createState() => _CadastroProdutoPageState();
}

class _CadastroProdutoPageState extends State<CadastroProdutoPage> {
  final TextEditingController nomeCtrl = TextEditingController();
  final TextEditingController precoCtrl = TextEditingController();
  final TextEditingController descricaoCtrl = TextEditingController();

  void _salvar() {
    final nome = nomeCtrl.text.trim();
    final preco = precoCtrl.text.trim();
    final desc = descricaoCtrl.text.trim();
    if (nome.isEmpty || preco.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Preencha nome e preço')));
      return;
    }
    // TODO: salvar em Firestore
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Produto cadastrado (simulado)!')));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar Produto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: nomeCtrl, decoration: const InputDecoration(labelText: 'Nome do Produto')),
            TextField(controller: precoCtrl, decoration: const InputDecoration(labelText: 'Preço')),
            TextField(controller: descricaoCtrl, decoration: const InputDecoration(labelText: 'Descrição')),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _salvar, child: const Text('Salvar'))
          ],
        ),
      ),
    );
  }
}
