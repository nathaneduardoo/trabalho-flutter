class Pet {
  String nome;
  int idade;
  double peso;
  DateTime dtCadastro;

  Pet({
    required this.nome,
    required this.idade,
    required this.peso,
    required this.dtCadastro,
  });

  String ficha(){
    return '$nome, $idade anos, $peso kg';
  }
}