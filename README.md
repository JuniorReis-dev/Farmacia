# Projeto Farmacia - Backend com Spring Boot

<br />

<div align="center">
<img src="https://i.ibb.co/vvM4yJYK/Fire-Shot-Capture-025-Swagger-UI-localhost.png" title="Swagger UI da API Farmacia" alt="Swagger UI da API Farmacia" />
</div>

<br />

<div align="center">
<img src="https://img.shields.io/github/languages/top/JuniorReis-dev/Farmacia?style=flat-square" />
<img src="https://img.shields.io/github/repo-size/JuniorReis-dev/Farmacia?style=flat-square" />
<img src="https://img.shields.io/github/languages/count/JuniorReis-dev/Farmacia?style=flat-square" />
<img src="https://img.shields.io/github/last-commit/JuniorReis-dev/Farmacia?style=flat-square" />
<img src="https://img.shields.io/github/issues/JuniorReis-dev/Farmacia?style=flat-square" />
<img src="https://img.shields.io/github/issues-pr/JuniorReis-dev/Farmacia?style=flat-square" />
<img src="https://img.shields.io/badge/status-construção-yellow" alt="Status: Em Construção" />
</div>

<br />

## 1. Descrição

<br />

O **Projeto Farmacia** é uma aplicação backend desenvolvida para gerenciar o cadastro de produtos farmacêuticos e suas categorias. Esta API permite que usuários autenticados realizem operações de criação, leitura, atualização e exclusão (CRUD) de produtos e categorias, facilitando a organização e o controle de estoque de uma farmácia.

Entre os principais recursos que a API Farmacia oferece, destacam-se:

1. Gerenciamento completo de produtos farmacêuticos (cadastro, consulta, atualização e remoção)
2. Organização de produtos por categorias
3. Cadastro e autenticação de usuários com segurança
4. Controle de acesso às operações através de autenticação JWT
5. Documentação interativa da API via Swagger UI

A aplicação foi desenvolvida com fins educacionais, simulando um sistema real de gerenciamento de farmácia para praticar conceitos de API REST com Java e Spring Boot.

<br />

## 2. Sobre esta API

<br />

A API do Projeto Farmacia foi desenvolvida utilizando **Java** e o **framework Spring**, seguindo os princípios da Arquitetura MVC e REST. Ela oferece endpoints para o gerenciamento dos recursos **Usuário**, **Produto** e **Categoria**, permitindo a interação entre os usuários autenticados e os dados cadastrados.

<br />

### 2.1. Principais funcionalidades da API:

<br />

1. Consulta, cadastro, login e atualização dos dados de usuários
2. Consulta, criação e gerenciamento de categorias para classificar produtos
3. Criação, edição, listagem e remoção de produtos farmacêuticos
4. Associação de produtos a categorias específicas
5. Autenticação via token JWT para segurança nas requisições

<br />

## 3. Diagrama de Classes

<br />

O **Diagrama de Classes** é um modelo visual usado na programação orientada a objetos para representar a estrutura de um sistema. Ele exibe classes, atributos, métodos e os relacionamentos entre elas, como associações, heranças e dependências.

Esse diagrama ajuda a planejar e entender a arquitetura do sistema, mostrando como as entidades interagem e se conectam. É amplamente utilizado nas fases de design e documentação de projetos.

<br />

```mermaid
classDiagram
class Produto {
  - id : Long
  - nome : String
  - descricao : String
  - preco : BigDecimal
  - foto : String
  - categoria : Categoria
}
class Categoria {
  - id : Long
  - descricao : String
  - produtos : List<Produto>
}
class Usuario {
  - id : Long
  - nome : String
  - usuario : String
  - senha : String
  - foto : String
}
class UsuarioLogin {
  - id : Long
  - nome : String
  - usuario : String
  - senha : String
  - foto : String
  - token : String
}
Categoria "1" --> "0..*" Produto : classifica
```

<br />

## 4. Diagrama Entidade-Relacionamento (DER)

<br />

O **DER (Diagrama Entidade-Relacionamento)** do projeto **Farmacia** representa de forma visual como os dados estão organizados no banco de dados relacional e como as entidades se relacionam entre si.

<br />

```mermaid
erDiagram
    tb_usuarios ||--o{ tb_produtos : gerencia
    tb_categorias ||--o{ tb_produtos : classifica

    tb_usuarios {
        bigint id PK
        varchar(255) nome
        varchar(255) usuario
        varchar(255) senha
        varchar(5000) foto
    }

    tb_categorias {
        bigint id PK
        varchar(255) descricao
    }

    tb_produtos {
        bigint id PK
        varchar(255) nome
        text descricao
        decimal preco
        varchar(5000) foto
        bigint categoria_id FK
    }
```

<br />

## 5. Tecnologias utilizadas

<br />

| Item                          | Descrição       |
| ----------------------------- | --------------- |
| **Servidor**                  | Tomcat          |
| **Linguagem de programação**  | Java            |
| **Framework**                 | Spring Boot     |
| **ORM**                       | JPA + Hibernate |
| **Banco de dados Relacional** | MySQL           |
| **Segurança**                 | Spring Security |
| **Autenticação**              | JWT             |
| **Testes automatizados**      | JUnit           |
| **Documentação**              | SpringDoc       |

<br />

## 6. Requisitos

<br />

Para executar os códigos localmente, você precisará:

- [Java JDK 17+](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
- Banco de dados [MySQL](https://dev.mysql.com/downloads/)
- [STS](https://spring.io/tools)
- [Insomnia](https://insomnia.rest/download) ou [Postman](https://www.postman.com/)

<br />

## 7. Como Executar o projeto no STS

<br />

### 7.1. Importando o Projeto

1. Clone o repositório do Projeto [Farmacia](https://github.com/JuniorReis-dev/Farmacia) dentro da pasta do _Workspace_ do STS

```bash
git clone https://github.com/JuniorReis-dev/Farmacia.git
```

2. **Abra o STS** e selecione a pasta do _Workspace_ onde você clonou o repositório do projeto
3. No menu superior do STS, clique na opção: **File 🡲 Import...**
4. Na janela **Import**, selecione a opção: **General 🡲 Existing Projects into Workspace** e clique no botão **Next**
5. Na janela **Import Projects**, no item **Select root directory**, clique no botão **Browse...** e selecione a pasta do Workspace onde você clonou o repositório do projeto
6. O STS reconhecerá o projeto automaticamente
7. Marque o Projeto Farmacia no item **Projects** e clique no botão **Finish** para concluir a importação

<br />

### 7.2. Executando o projeto

1. Na Guia **Boot Dashboard**, localize o **Projeto Farmacia**
2. Selecione o **Projeto Farmacia**
3. Clique no botão **Start or Restart** <img src="https://i.imgur.com/wdoZqWP.png" title="source: imgur.com" width="4%"/> para iniciar a aplicação
4. Caso seja perguntado se você deseja autorizar o acesso ao projeto via rede, clique no botão **Permitir Acesso**
5. Acompanhe a inicialização do projeto no console do STS
6. Verifique se o banco de dados `db_farmacia` foi criado corretamente e se as tabelas foram geradas automaticamente.
7. Utilize o [Insomnia](https://insomnia.rest/) ou o [Postman](https://www.postman.com/) para testar os endpoints.

<br />

> [!TIP]
>
> Ao acessar a URL `http://localhost:8080` em seu navegador, a interface do Swagger será carregada automaticamente, permitindo a visualização e a interação com os endpoints da API, bem como a consulta dos modelos de dados utilizados.

<br />

## 8. Contribuição

<br />

Este repositório é parte de um projeto educacional, mas contribuições são sempre bem-vindas! Caso tenha sugestões, correções ou melhorias, fique à vontade para:

- Criar uma **issue**
- Enviar um **pull request**
- Compartilhar com colegas que estejam aprendendo Java!

<br />

## 9. Contato

<br />

Desenvolvido por [**Junior Reis**](https://github.com/JuniorReis-dev)

Para dúvidas, sugestões ou colaborações, entre em contato via GitHub ou abra uma issue!
