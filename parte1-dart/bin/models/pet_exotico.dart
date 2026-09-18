import 'pet.dart';

class PetExotico extends Pet{
  final String habitat;
  final String autorizacaoIbama;

  PetExotico({
    required super.nome,
    required super.idade,
    required super.peso,
    required super.dtCadastro,
    required this.habitat,
    required this.autorizacaoIbama,
  });

  @override
  String ficha(){
    return '${super.ficha()}, $habitat, $autorizacaoIbama';
  }
}