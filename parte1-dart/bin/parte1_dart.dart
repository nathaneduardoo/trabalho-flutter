import 'models/pet.dart';
import 'models/pet_exotico.dart';
import 'models/clinica.dart';

void main(List<String> arguments) {
  // ===== [1] ENTIDADE PRINCIPAL =====
  final pet1 = Pet(
    nome: 'Thor',
    idade: 3,
    peso: 12.5,
    dtCadastro: DateTime(2026, 1, 15),
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  print('Pet: ${pet1.nome} | ${pet1.idade} anos | ${pet1.peso} kg | ${pet1.dtCadastro.year}');

  // ===== [2] HERANÇA =====
  final petComum = Pet(
    nome: 'Mel',
    idade: 5,
    peso: 8.0,
    dtCadastro: DateTime(2026, 2, 10),
  );
  
  final petExotico = PetExotico(
    nome: 'Nilo',
    idade: 2,
    peso: 1.5,
    dtCadastro: DateTime(2026, 3, 1),
    habitat: 'Terrário Aquático',
    autorizacaoIbama: 'IBAMA-4589',
  );

  print('\n===== [2] HERANÇA =====');
  print('Pet comum -> ficha: "${petComum.ficha()}"');
  print('PetExotico -> ficha: "${petExotico.ficha()}"');

  // ===== [3] COMPOSIÇÃO =====
  final clinica = Clinica(nomeClinica: 'Veterinária Maringá');
  clinica.adicionar(pet1);
  clinica.adicionar(petComum);
  clinica.adicionar(petExotico);

  print('\n===== [3] COMPOSIÇÃO =====');
  print('Clínica "${clinica.nomeClinica}" contém ${clinica.pets.length} pets:');
  for (var p in clinica.pets) {
    print('  - ${p.nome}');
  }

  // ===== [4] ENCAPSULAMENTO =====
  print('\n===== [4] ENCAPSULAMENTO =====');
  print('Clínica "${clinica.nomeClinica}" -> peso total (calculado): ${clinica.pesoTotal} kg');
  
  final novoPet = Pet(
    nome: 'Bob',
    idade: 4,
    peso: 20.0,
    dtCadastro: DateTime(2026, 3, 18),
  );
  clinica.adicionar(novoPet);
  
  print('Após adicionar "${novoPet.nome}" (${novoPet.peso} kg): ${clinica.pesoTotal} kg');
}
