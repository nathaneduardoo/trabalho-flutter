import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../models/pet_exotico.dart';

class CadastroPetScreen extends StatefulWidget {
  const CadastroPetScreen({super.key});

  @override
  State<CadastroPetScreen> createState() => _CadastroPetScreenState();
}

class _CadastroPetScreenState extends State<CadastroPetScreen> {
  final _nomeController = TextEditingController();
  final _idadeController = TextEditingController();
  final _pesoController = TextEditingController();
  final _habitatController = TextEditingController();
  final _ibamaController = TextEditingController();

  bool _isExotico = false;

  @override
  void dispose() {
    _nomeController.dispose();
    _idadeController.dispose();
    _pesoController.dispose();
    _habitatController.dispose();
    _ibamaController.dispose();
    super.dispose();
  }

  void _salvarPet() {
    final nome = _nomeController.text.trim();
    final idade = int.tryParse(_idadeController.text) ?? 0;
    final peso = double.tryParse(_pesoController.text) ?? 0.0;

    if (nome.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, preencha o nome do pet.')),
      );
      return;
    }

    Pet novoPet;

    if (_isExotico) {
      final habitat = _habitatController.text.trim();
      final ibama = _ibamaController.text.trim();

    
      novoPet = PetExotico(
        nome: nome,
        idade: idade,
        peso: peso,
        dtCadastro: DateTime.now(),
        habitat: habitat.isEmpty ? 'Não informado' : habitat,
        autorizacaoIbama: ibama.isEmpty ? 'IBAMA-0000' : ibama,
      );
    } else {
      novoPet = Pet(
        nome: nome,
        idade: idade,
        peso: peso,
        dtCadastro: DateTime.now(),
      );
    }

    Navigator.pop(context, novoPet);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Novo Pet'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome do Pet',
                prefixIcon: Icon(Icons.pets),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _idadeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Idade (anos)',
                prefixIcon: Icon(Icons.cake),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _pesoController,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Peso (kg)',
                prefixIcon: Icon(Icons.fitness_center),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            
            // switch para alternar entre pet normal e pet exótico
            SwitchListTile(
              title: const Text('É um Pet Exótico?'),
              subtitle: const Text('Ative para informar habitat e IBAMA'),
              value: _isExotico,
              activeThumbColor: Colors.teal,
              onChanged: (bool value) {
                setState(() {
                  _isExotico = value;
                });
              },
            ),

            // campos condicionais que só aparecem se for exótico
            if (_isExotico) ...[
              const SizedBox(height: 16),
              TextFormField(
                controller: _habitatController,
                decoration: const InputDecoration(
                  labelText: 'Habitat',
                  prefixIcon: Icon(Icons.landscape),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _ibamaController,
                decoration: const InputDecoration(
                  labelText: 'Autorização IBAMA',
                  prefixIcon: Icon(Icons.verified),
                  border: OutlineInputBorder(),
                ),
              ),
            ],

            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: _salvarPet,
                icon: const Icon(Icons.save),
                label: const Text('Salvar Pet', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}