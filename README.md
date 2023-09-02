<h1 align="center">Banco de Dados da Oficina Mecânica Toretto</h1>

Este repositório contém a estrutura de um banco de dados desenvolvido para uma oficina mecânica fictícia chamada "Oficina Mecânica Toretto". 
essa oficina é localizada no Brooklin, São Paulo-SP, foi fundada em 2021 por Fábio Toretto e sua irmã Fernanda Toretto, que compartilham uma paixão profunda por carros. 
O banco de dados foi criado para gerenciar informações sobre clientes, veículos, serviços, funcionários, fornecedores, peças e ordens de serviço. 
Ele é projetado para ajudar a oficina mecânica a manter registros precisos e eficientes de suas operações.

## Tabelas Principais 📁 car_repair_shop_db.sql
● clients: Armazena informações sobre os clientes da oficina, incluindo nome, data de nascimento, endereço, informações de contato e endereço de e-mail.

● vehicles: Registra os detalhes dos veículos dos clientes, como marca, modelo, ano, placa, cor e quilometragem. Também estabelece uma relação com os clientes.

● services: Contém informações sobre os tipos de serviços oferecidos pela oficina, seus preços e tempos estimados.

● employees: Mantém os dados dos funcionários da oficina, incluindo nome, CPF (ou CNPJ, no caso de fornecedores), telefone, cargo e data de contratação.

● suppliers: Armazena informações sobre os fornecedores da oficina, incluindo o nome da empresa, endereço, pessoa de contato e número de contato. Também estabelece uma relação com os funcionários.

● parts_inventory: Registra informações sobre o estoque de peças disponíveis, incluindo nome, descrição, preço, data de validade e quantidade em estoque. Também estabelece uma relação com os fornecedores.

● service_order: Rastreia as ordens de serviço, incluindo informações sobre o cliente, veículo, serviço solicitado, fornecedor, funcionário responsável e data do serviço.

● payments: Registra informações sobre os pagamentos associados às ordens de serviço, incluindo data, valor, método de pagamento e referência à ordem de serviço correspondente.

## Queries 📁 car_repair_shop_queries.sql
O banco de dados inclui uma série de consultas de exemplo que podem ser usadas para extrair informações úteis. Algumas das consultas de exemplo incluem:

● Listar os clientes e calcular suas idades com base na data de nascimento.

● Exibir veículos em ordem decrescente de quilometragem.

● Identificar os serviços mais caros oferecidos pela oficina.

● Recuperar funcionários que são mecânicos na oficina.

● Listar fornecedores localizados em São Paulo.

● Verificar as peças em estoque com menos de 50 unidades.

● Calcular o preço total de cada serviço em uma ordem de serviço.

● Identificar o tipo de serviço mais demorado.

● Listar os serviços mais caros realizados em veículos de uma marca específica.

● Encontrar clientes que possuem veículos de uma determinada marca.

● Descobrir os serviços mais solicitados pela oficina.

● Identificar os serviços realizados em veículos com mais de 100.000 km.

## Modelo EER 📁 car_repair_shop_eer_workbench.mwb
Arquivo do modelo de entidade relacionamento estendido (EER) para a modelagem de dados lógico do banco de dados para oficina mecânica.
