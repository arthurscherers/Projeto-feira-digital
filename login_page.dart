import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController senhaCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: emailCtrl, decoration: const InputDecoration(labelText: 'E-mail')),
            TextField(controller: senhaCtrl, decoration: const InputDecoration(labelText: 'Senha'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: autenticação com FirebaseAuth
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: const Text('Entrar'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {
                // TODO: navegar para cadastro de usuário
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Cadastro ainda não implementado')));
              },
              child: const Text('Criar conta'),
            )
          ],
        ),
      ),
    );
  }
}
