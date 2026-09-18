import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../models/pet_exotico.dart';

class DetalhesPetScreen extends StatelessWidget {
  final Pet pet;

  const DetalhesPetScreen({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes de ${pet.nome}'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nome: ${pet.nome}', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const Divider(height: 20),
                    Text('Idade: ${pet.idade} anos', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 8),
                    Text('Peso: ${pet.peso} kg', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 8),
                    Text('Data de Cadastro: ${pet.dtCadastro.toLocal().toString().split(' ')[0]}', style: const TextStyle(fontSize: 16, color: Colors.grey)),
                    
                    if (pet is PetExotico) ...[
                      const SizedBox(height: 8),
                      Text('Habitat: ${(pet as PetExotico).habitat}', style: const TextStyle(fontSize: 16, color: Colors.teal)),
                      const SizedBox(height: 8),
                      Text('Autorização IBAMA: ${(pet as PetExotico).autorizacaoIbama}', style: const TextStyle(fontSize: 16, color: Colors.orange)),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}