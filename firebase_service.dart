/// Serviço de exemplo para integração com Firebase.
/// ATENÇÃO: Este é um esqueleto com exemplos. Você precisa:
/// 1) Adicionar as dependências no pubspec.yaml (firebase_core, cloud_firestore, firebase_auth)
/// 2) Rodar `flutterfire configure` ou adicionar manualmente os arquivos google-services.json/GoogleService-Info.plist
/// 3) Descomentar e inicializar Firebase no main.dart
///
/// Exemplo de uso:
/// final fs = FirebaseService();
/// fs.addProduct({...});

import 'package:flutter/foundation.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  // final FirebaseFirestore _db = FirebaseFirestore.instance;
  FirebaseService();

  Future<void> addProduct(Map<String, dynamic> data) async {
    // await _db.collection('products').add(data);
    debugPrint('Simulação: addProduct -> \$data');
  }

  Future<List<Map<String, dynamic>>> listProducts() async {
    // final snap = await _db.collection('products').get();
    // return snap.docs.map((d) => d.data()).toList();
    return [
      {'id': '1', 'name': 'Tomate', 'price': 5.0, 'description': 'Tomate fresco'},
    ];
  }
}
