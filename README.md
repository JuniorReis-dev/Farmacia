<h1 id="projeto-farmacia---backend-com-spring-boot">Projeto Farmacia - Backend com Spring Boot</h1>
<br>
<div align="center" bis_skin_checked="1">
<a href=" https:="" ibb.co=""><img src="https://i.ibb.co/vvM4yJYK/Fire-Shot-Capture-025-Swagger-UI-localhost.png"
</div>
<br>
<div align="center" bis_skin_checked="1">
<img src="https://img.shields.io/github/languages/top/JuniorReis-dev/Farmacia?style=flat-square">
<img src="https://img.shields.io/github/repo-size/JuniorReis-dev/Farmacia?style=flat-square">
<img src="https://img.shields.io/github/languages/count/JuniorReis-dev/Farmacia?style=flat-square">
<img src="https://img.shields.io/github/last-commit/JuniorReis-dev/Farmacia?style=flat-square">
<img src="https://img.shields.io/github/issues/JuniorReis-dev/Farmacia?style=flat-square">
<img src="https://img.shields.io/github/issues-pr/JuniorReis-dev/Farmacia?style=flat-square">
<img src="https://img.shields.io/badge/status-construção-yellow" alt="Status: Em Construção">
</div>
<br>
<h2 id="1-descrição">1. Descrição</h2>
<br>
<p>O <strong>Projeto Farmacia</strong> é uma aplicação backend desenvolvida para gerenciar o cadastro de produtos farmacêuticos e suas categorias. Esta API permite que usuários autenticados realizem operações de criação, leitura, atualização e exclusão (CRUD) de produtos e categorias, facilitando a organização e o controle de estoque de uma farmácia.</p>
<p>Entre os principais recursos que a API Farmacia oferece, destacam-se:</p>
<ol>
<li>Gerenciamento completo de produtos farmacêuticos (cadastro, consulta, atualização e remoção)</li>
<li>Organização de produtos por categorias</li>
<li>Cadastro e autenticação de usuários com segurança</li>
<li>Controle de acesso às operações através de autenticação JWT</li>
<li>Documentação interativa da API via Swagger UI</li>
</ol>
<p>A aplicação foi desenvolvida com fins educacionais, simulando um sistema real de gerenciamento de farmácia para praticar conceitos de API REST com Java e Spring Boot.</p>
<br>
<h2 id="2-sobre-esta-api">2. Sobre esta API</h2>
<br>
<p>A API do Projeto Farmacia foi desenvolvida utilizando <strong>Java</strong> e o <strong>framework Spring</strong>, seguindo os princípios da Arquitetura MVC e REST. Ela oferece endpoints para o gerenciamento dos recursos <strong>Usuário</strong>, <strong>Produto</strong> e <strong>Categoria</strong>, permitindo a interação entre os usuários autenticados e os dados cadastrados.</p>
<br>
<h3 id="21-principais-funcionalidades-da-api">2.1. Principais funcionalidades da API:</h3>
<br>
<ol>
<li>Consulta, cadastro, login e atualização dos dados de usuários</li>
<li>Consulta, criação e gerenciamento de categorias para classificar produtos</li>
<li>Criação, edição, listagem e remoção de produtos farmacêuticos</li>
<li>Associação de produtos a categorias específicas</li>
<li>Autenticação via token JWT para segurança nas requisições</li>
</ol>
<br>
<h2 id="3-diagrama-de-classes">3. Diagrama de Classes</h2>
<br>
<p>O <strong>Diagrama de Classes</strong> é um modelo visual usado na programação orientada a objetos para representar a estrutura de um sistema. Ele exibe classes, atributos, métodos e os relacionamentos entre elas, como associações, heranças e dependências.</p>
<p>Esse diagrama ajuda a planejar e entender a arquitetura do sistema, mostrando como as entidades interagem e se conectam. É amplamente utilizado nas fases de design e documentação de projetos.</p>
<br>
<pre><pre><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>classDiagram</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>class Produto {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - id : Long</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - nome : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - descricao : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - preco : BigDecimal</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - foto : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - categoria : Categoria</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>}</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>class Categoria {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - id : Long</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - descricao : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - produtos : List&lt;Produto&gt;</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>}</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>class Usuario {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - id : Long</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - nome : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - usuario : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - senha : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - foto : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>}</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>class UsuarioLogin {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - id : Long</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - nome : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - usuario : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - senha : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - foto : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>  - token : String</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>}</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>Categoria "1" --&gt; "0..*" Produto : classifica</span></div></pre></pre>
<br>
<h2 id="4-diagrama-entidade-relacionamento-der">4. Diagrama Entidade-Relacionamento (DER)</h2>
<br>
<p>O <strong>DER (Diagrama Entidade-Relacionamento)</strong> do projeto <strong>Farmacia</strong> representa de forma visual como os dados estão organizados no banco de dados relacional e como as entidades se relacionam entre si.</p>
<br>
<pre><pre><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>erDiagram</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    tb_usuarios ||--o{ tb_produtos : gerencia</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    tb_categorias ||--o{ tb_produtos : classifica</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span style="display: inline-block;">
</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    tb_usuarios {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        bigint id PK</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(255) nome</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(255) usuario</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(255) senha</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(5000) foto</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    }</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span style="display: inline-block;">
</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    tb_categorias {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        bigint id PK</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(255) descricao</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    }</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span style="display: inline-block;">
</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    tb_produtos {</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        bigint id PK</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(255) nome</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        text descricao</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        decimal preco</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        varchar(5000) foto</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>        bigint categoria_id FK</span></div><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>    }</span></div></pre></pre>
<br>
<h2 id="5-tecnologias-utilizadas">5. Tecnologias utilizadas</h2>
<br>

<table><thead><tr><th>Item</th><th>Descrição</th></tr></thead><tbody><tr><td><strong>Servidor</strong></td><td>Tomcat</td></tr><tr><td><strong>Linguagem de programação</strong></td><td>Java</td></tr><tr><td><strong>Framework</strong></td><td>Spring Boot</td></tr><tr><td><strong>ORM</strong></td><td>JPA + Hibernate</td></tr><tr><td><strong>Banco de dados Relacional</strong></td><td>MySQL</td></tr><tr><td><strong>Segurança</strong></td><td>Spring Security</td></tr><tr><td><strong>Autenticação</strong></td><td>JWT</td></tr><tr><td><strong>Testes automatizados</strong></td><td>JUnit</td></tr><tr><td><strong>Documentação</strong></td><td>SpringDoc</td></tr></tbody></table>
<br>
<h2 id="6-requisitos">6. Requisitos</h2>
<br>
<p>Para executar os códigos localmente, você precisará:</p>
<ul>
<li><a href="https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html">Java JDK 17+</a></li>
<li>Banco de dados <a href="https://dev.mysql.com/downloads/">MySQL</a></li>
<li><a href="https://spring.io/tools">STS</a></li>
<li><a href="https://insomnia.rest/download">Insomnia</a> ou <a href="https://www.postman.com/">Postman</a></li>
</ul>
<br>
<h2 id="7-como-executar-o-projeto-no-sts">7. Como Executar o projeto no STS</h2>
<br>
<h3 id="71-importando-o-projeto">7.1. Importando o Projeto</h3>
<ol>
<li>Clone o repositório do Projeto <a href="https://github.com/JuniorReis-dev/Farmacia">Farmacia</a> dentro da pasta do <em>Workspace</em> do STS</li>
</ol>
<pre><pre><div style="color: rgb(171, 178, 191); text-shadow: rgba(0, 0, 0, 0.3) 0px 1px;" bis_skin_checked="1"><span>git clone https://github.com/JuniorReis-dev/Farmacia.git</span></div></pre></pre>
<ol start="2">
<li><strong>Abra o STS</strong> e selecione a pasta do <em>Workspace</em> onde você clonou o repositório do projeto</li>
<li>No menu superior do STS, clique na opção: <strong>File 🡲 Import...</strong></li>
<li>Na janela <strong>Import</strong>, selecione a opção: <strong>General 🡲 Existing Projects into Workspace</strong> e clique no botão <strong>Next</strong></li>
<li>Na janela <strong>Import Projects</strong>, no item <strong>Select root directory</strong>, clique no botão <strong>Browse...</strong> e selecione a pasta do Workspace onde você clonou o repositório do projeto</li>
<li>O STS reconhecerá o projeto automaticamente</li>
<li>Marque o Projeto Farmacia no item <strong>Projects</strong> e clique no botão <strong>Finish</strong> para concluir a importação</li>
</ol>
<br>
<h3 id="72-executando-o-projeto">7.2. Executando o projeto</h3>
<ol>
<li>Na Guia <strong>Boot Dashboard</strong>, localize o <strong>Projeto Farmacia</strong></li>
<li>Selecione o <strong>Projeto Farmacia</strong></li>
<li>Clique no botão <strong>Start or Restart</strong> <img src="https://i.imgur.com/wdoZqWP.png" title="source: imgur.com" width="4%"> para iniciar a aplicação</li>
<li>Caso seja perguntado se você deseja autorizar o acesso ao projeto via rede, clique no botão <strong>Permitir Acesso</strong></li>
<li>Acompanhe a inicialização do projeto no console do STS</li>
<li>Verifique se o banco de dados <code>db_farmacia</code> foi criado corretamente e se as tabelas foram geradas automaticamente.</li>
<li>Utilize o <a href="https://insomnia.rest/">Insomnia</a> ou o <a href="https://www.postman.com/">Postman</a> para testar os endpoints.</li>
</ol>
<br>
<blockquote>
<p>[!TIP]</p>
<p>Ao acessar a URL <code>http://localhost:8080</code> em seu navegador, a interface do Swagger será carregada automaticamente, permitindo a visualização e a interação com os endpoints da API, bem como a consulta dos modelos de dados utilizados.</p>
</blockquote>
<br>
<h2 id="8-contribuição">8. Contribuição</h2>
<br>
<p>Este repositório é parte de um projeto educacional, mas contribuições são sempre bem-vindas! Caso tenha sugestões, correções ou melhorias, fique à vontade para:</p>
<ul>
<li>Criar uma <strong>issue</strong></li>
<li>Enviar um <strong>pull request</strong></li>
<li>Compartilhar com colegas que estejam aprendendo Java!</li>
</ul>
<br>
<h2 id="9-contato">9. Contato</h2>
<br>
<p>Desenvolvido por <a href="https://github.com/JuniorReis-dev"><strong>Junior Reis</strong></a></p>
<p>Para dúvidas, sugestões ou colaborações, entre em contato via GitHub ou abra uma issue!</p>
