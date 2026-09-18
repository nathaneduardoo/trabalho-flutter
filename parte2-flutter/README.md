# Projeto Parte 2 — Aplicativo Flutter (Clínica Veterinária)

Trabalho prático desenvolvido para a disciplina de desenvolvimento móvel, implementando a interface gráfica em Flutter utilizando os conceitos de modelagem orientada a objetos (Herança e Agrupamento) desenvolvidos na Parte 1.

## 📋 Tabela de Rastreio 

| Requisito / Exercício | Arquivo Principal | Linhas | Descrição da Implementação |
| :--- | :--- | :--- | :--- |
| **5. Estrutura de Tela** | `lib/screens/home.dart` | Linha 32 a 40 | Uso de `Scaffold`, `AppBar`, `Column` com `mainAxisAlignment` e `crossAxisAlignment` explícitos e `Expanded` envolvendo a `ListView`. |
| **6. Cartão do Item** | `lib/widgets/pet_card.dart` | Linha 15 a 29 | Widget customizado isolado utilizando `Container` com `BoxDecoration` (fundo, bordas arredondadas e sombra). |
| **7. Lista Dinâmica** | `lib/screens/home.dart` | Linha 64 a 66 | Objeto agrupador `Clinica` inicializado com 6 itens fixos no `initState` e renderizado via `ListView.builder`. |
| **8. Navegação e Dados** | `lib/screens/home.dart` (linha 71 a 75) & `detalhes_pet.dart` (linha 31 a 43) | Linha 71 a 75 / 31 a 43 | Passagem do objeto `Pet` pelo construtor via `Navigator.push` para exibição de dados detalhados e extras. |
| **9. Entrada de Dados** | `lib/screens/cadastro_pet.dart` | Linha 13 a 30 (controllers) e 84 (campo) | Formulário com `TextFormField`, uso de `TextEditingController`, conversão segura (`int.tryParse`) e `dispose()`. |
| **10. Gerenciamento de Estado** | `lib/screens/home.dart` | Linha 96 a 98 | Tela como `StatefulWidget` e atualização da lista e do total do topo utilizando o método `setState`. |

## 🚀 Como Executar o Projeto

1. Certifique-se de ter o Flutter instalado na sua máquina.
2. No terminal, navegue até a pasta do projeto: `cd parte2-flutter`
3. Instale as dependências necessárias: `flutter pub get`
4. Execute o aplicativo (recomendado via navegador Google Chrome): `flutter run`

## 👥 Autor
* **Nathan Eduardo Lima Natal**