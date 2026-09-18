import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../models/pet_exotico.dart';
import '../models/clinica.dart';
import '../widgets/pet_card.dart';
import 'detalhes_pet.dart'; 
import 'cadastro_pet.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Clinica _clinica = Clinica(nomeClinica: 'VetCare Maringá');

  @override
  void initState() {
    super.initState();
    _clinica.adicionar(Pet(nome: 'Thor', idade: 3, peso: 12.5, dtCadastro: DateTime(2026, 1, 15)));
    _clinica.adicionar(PetExotico(nome: 'Nilo', idade: 2, peso: 1.5, dtCadastro: DateTime(2026, 3, 1), habitat: 'Terrário Aquático', autorizacaoIbama: 'IBAMA-4589'));
    _clinica.adicionar(Pet(nome: 'Mel', idade: 5, peso: 8.0, dtCadastro: DateTime(2026, 2, 10)));
    _clinica.adicionar(PetExotico(nome: 'Blizzard', idade: 1, peso: 0.8, dtCadastro: DateTime(2026, 3, 5), habitat: 'Gaiola Climatizada', autorizacaoIbama: 'IBAMA-9921'));
    _clinica.adicionar(Pet(nome: 'Bob', idade: 4, peso: 20.0, dtCadastro: DateTime(2026, 1, 20)));
    _clinica.adicionar(PetExotico(nome: 'Spike', idade: 3, peso: 3.2, dtCadastro: DateTime(2026, 2, 28), habitat: 'Aquário de Água Salgada', autorizacaoIbama: 'IBAMA-1102'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_clinica.nomeClinica),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.teal.shade50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total de Pets: ${_clinica.pets.length}',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Peso Total (Clínica): ${_clinica.pesoTotal.toStringAsFixed(1)} kg',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: _clinica.pets.length,
              itemBuilder: (context, index) {
                final pet = _clinica.pets[index];
                return PetCard(
                  pet: pet,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesPetScreen(pet: pet), 
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        onPressed: () async {
          final novoPet = await Navigator.push<Pet>(
            context,
            MaterialPageRoute(
              builder: (context) => const CadastroPetScreen(),
            ),
          );

          if (novoPet != null) {
            setState(() {
              _clinica.adicionar(novoPet);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}