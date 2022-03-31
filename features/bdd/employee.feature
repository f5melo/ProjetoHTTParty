# language: pt

Funcionalidade: Pesquisar Funcionarios
Para averiguar informacoes
O usuário do sistema
Deseja poder consultar informacoes dos funcionarios


Cenario: Buscar informacoes de funcionario
Dado que o usuario consulte informacoes de funcionario
Quando ele realizar a pesquisa
Então um lista de funcionarios deve retornar


Cenario: Cadastrar funcionario
Dado que o usuario cadastre um novo funcionario
Quando ele enviar as informacoes do funcionario
Entao ele funcionario sera cadastrado