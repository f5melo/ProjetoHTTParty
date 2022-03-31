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


Cenario: Alterar informacoes cadastrais
Dado que o usuario altere uma informacao de funcionario
Quando ele enviar as novas informacoes
Entao as informacoes serao alteradas


Cenario: Deletar cadastro de funcionario
Dado que o usuario queira deletar um funcionario
Quando ele enviar a identificacao unica
Entao esse funcionario sera deletado do sistema