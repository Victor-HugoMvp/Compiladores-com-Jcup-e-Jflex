# Analisador Léxico, Sintático e Semântico em Java

Projeto desenvolvido em Java para a disciplina de Compiladores (Unidade 2), focado na implementação e integração das etapas de análise léxica, sintática e semântica utilizando **JFlex** e **CUP**.

## 📌 Visão Geral

Este repositório contém a implementação de um analisador sintático e semântico construído em Java. O fluxo de processamento lê um ficheiro de código-fonte contendo instruções e executa as seguintes etapas:

1. **Análise Léxica (`JFlex`)**: Leitura do código-fonte e conversão em tokens[cite: 1, 2].
2. **Análise Sintática (`CUP`)**: Validação das regras gramaticais a partir dos tokens gerados[cite: 1, 2].
3. **Análise Semântica (`CUP` / `Java`)**: Verificação do significado das construções e regras semânticas[cite: 1, 2].

## 🛠️ Tecnologias e Ferramentas

- **Linguagem**: Java[cite: 1, 2]
- **Analisador Léxico**: JFlex (`.flex`)[cite: 1, 2]
- **Analisador Sintático/Semântico**: CUP (`.cup`)
- **Gerenciador de Dependências**: Maven[cite: 1, 2]

## 📂 Estrutura do Projeto

```text
src/main/java/ ExemploCup/
├── lexicoExe3/
│   ├── especificacao.flex             # Ficheiro de especificação léxica JFlex
│   ├── sintaticoExe3.cup              # Ficheiro de regras sintáticas e semânticas CUP
│   ├── semantico.cup                  # Definições semânticas adicionais
│   ├── Lexer.java                     # Analisador léxico gerado
│   ├── ParserSintatico.java           # Analisador sintático gerado
│   ├── ParserSemantico.java           # Analisador semântico gerado
│   ├── Main_Teste_AnalisadorSintatico.java
│   └── Main_Teste_AnalisadorSemantico.java # Ponto de entrada para testes semânticos
