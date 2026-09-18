# Projeto Parte 1 — Modelagem em Dart (Clínica Veterinária)

Trabalho prático desenvolvido para a disciplina de desenvolvimento móvel, implementando a modelagem orientada a objetos em Dart puro (sem Flutter), que serve de base para a interface construída na Parte 2.

## 📋 Tabela de Rastreio 

| Requisito / Exercício | Arquivo Principal | Linhas | Descrição da Implementação |
| :--- | :--- | :--- | :--- |
| **1. Entidade Principal** | `bin/models/pet.dart` | Linha 7 a 12 | Classe `Pet` com construtor de parâmetros nomeados e atributos `required` (nome, idade, peso, dtCadastro). |
| **2. Herança** | `bin/models/pet_exotico.dart` | Linha 3 (extends) e 16 a 19 (@override) | Classe `PetExotico extends Pet`, repassando os campos herdados via `super` e sobrescrevendo `ficha()` com `@override`. |
| **3. Composição** | `bin/models/clinica.dart` | Linha 5 (lista) e 9 a 11 (adicionar) | Classe agrupadora `Clinica`, com `List<Pet>` interna e método `adicionar(Pet pet)`. |
| **4. Encapsulamento** | `bin/models/clinica.dart` | Linha 5 (privado) e 13 a 19 (getter) | Lista `_pets` privada com `_`, exposta por getter calculado `pesoTotal`, que soma os pesos a cada chamada. |

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o Dart SDK instalado na sua máquina.
2. No terminal, navegue até a pasta do projeto: `cd parte1-dart`
3. Execute o relatório: `dart run`

## 👥 Autor
* **Nathan Eduardo Lima Natal**
