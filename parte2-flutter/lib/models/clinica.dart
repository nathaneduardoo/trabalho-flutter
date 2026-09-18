import 'pet.dart';

class Clinica {
  String nomeClinica;
  final List<Pet> _pets = [];

  Clinica({required this.nomeClinica});

  void adicionar(Pet pet) {
    _pets.add(pet);
  }

  double get pesoTotal {
    double soma = 0;
    for (var pet in _pets) {
      soma += pet.peso;
    }
    return soma;
  }

  List<Pet> get pets => _pets;
}