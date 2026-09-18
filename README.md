# Trabalho — Dart puro e Flutter (Clínica Veterinária)

Trabalho prático desenvolvido para a disciplina de desenvolvimento móvel (4º ESW B), com modelagem orientada a objetos em Dart puro (Parte 1) e interface gráfica em Flutter (Parte 2). O domínio escolhido é uma clínica veterinária: `Pet` representa o item individual (e `PetExotico` sua especialização por herança) e `Clinica` é a classe agrupadora, que contém uma lista de pets por composição.

## 📋 Tabela de Rastreio 

| Requisito / Exercício | Arquivo Principal | Linhas | Descrição da Implementação |
| :--- | :--- | :--- | :--- |
| **1. Entidade Principal** | `parte1-dart/bin/models/pet.dart` | Linha 7 a 12 | Classe `Pet` com construtor de parâmetros nomeados e atributos `required` (nome, idade, peso, dtCadastro). |
| **2. Herança** | `parte1-dart/bin/models/pet_exotico.dart` | Linha 3 (extends) e 16 a 19 (@override) | Classe `PetExotico extends Pet`, repassando os campos herdados via `super` e sobrescrevendo `ficha()` com `@override`. |
| **3. Composição** | `parte1-dart/bin/models/clinica.dart` | Linha 5 (lista) e 9 a 11 (adicionar) | Classe agrupadora `Clinica`, com `List<Pet>` interna e método `adicionar(Pet pet)`. |
| **4. Encapsulamento** | `parte1-dart/bin/models/clinica.dart` | Linha 5 (privado) e 13 a 19 (getter) | Lista `_pets` privada com `_`, exposta por getter calculado `pesoTotal`, que soma os pesos a cada chamada. |
| **5. Estrutura de Tela** | `parte2-flutter/lib/screens/home.dart` | Linha 32 a 40 | Uso de `Scaffold`, `AppBar`, `Column` com `mainAxisAlignment` e `crossAxisAlignment` explícitos e `Expanded` envolvendo a `ListView`. |
| **6. Cartão do Item** | `parte2-flutter/lib/widgets/pet_card.dart` | Linha 15 a 29 | Widget customizado isolado utilizando `Container` com `BoxDecoration` (fundo, bordas arredondadas e sombra). |
| **7. Lista Dinâmica** | `parte2-flutter/lib/screens/home.dart` | Linha 64 a 66 | Objeto agrupador `Clinica` inicializado com 6 itens fixos no `initState` e renderizado via `ListView.builder`. |
| **8. Navegação e Dados** | `parte2-flutter/lib/screens/home.dart` & `detalhes_pet.dart` | Linha 71 a 75 / 31 a 43 | Passagem do objeto `Pet` pelo construtor via `Navigator.push` para exibição de dados detalhados e extras. |
| **9. Entrada de Dados** | `parte2-flutter/lib/screens/cadastro_pet.dart` | Linha 13 a 30 (controllers) e 84 (campo) | Formulário com `TextFormField`, uso de `TextEditingController`, conversão segura (`int.tryParse`) e `dispose()`. |
| **10. Gerenciamento de Estado** | `parte2-flutter/lib/screens/home.dart` | Linha 96 a 98 | Tela como `StatefulWidget` e atualização da lista e do total do topo utilizando o método `setState`. |

## 🚀 Como Executar o Projeto

**Parte 1 (Dart):**
1. Certifique-se de ter o Dart SDK instalado na sua máquina.
2. No terminal, navegue até a pasta do projeto: `cd parte1-dart`
3. Execute o relatório: `dart run`

**Parte 2 (Flutter):**
1. Certifique-se de ter o Flutter instalado na sua máquina.
2. No terminal, navegue até a pasta do projeto: `cd parte2-flutter`
3. Instale as dependências necessárias: `flutter pub get`
4. Execute o aplicativo (recomendado via navegador Google Chrome): `flutter run`

## 👥 Autor
* **Nathan Eduardo Lima Natal**
