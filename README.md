# Projeto de Gestão de Dados

## Resumo

Este projeto consiste na criação de uma base de dados para organizar e gerir informação de uma organização.

O sistema permite armazenar dados de forma estruturada, consultar informação através de Views e melhorar o acesso aos dados.

## Principais componentes

- Tabelas para armazenamento dos dados
- Views para apresentar informação de forma simples
- Índices para melhorar o desempenho das consultas
- Controlo de acesso aos dados
- Scripts para recuperação do sistema

## Objetivo

O objetivo é tornar a gestão dos dados mais organizada, segura e eficiente, reduzindo o trabalho manual e facilitando a consulta da informação.

## Utilização

Plano de Disaster Recovery

Para garantir a resiliência dos dados, foi definido um processo de backup e recuperação da base de dados PostgreSQL alojada no Neon.

1. Extração do backup

O backup é realizado através do pg_dump, criando uma cópia da base de dados num ficheiro:

pg_dump 'CONNECTION_STRING' > backup_neon.sql

O ficheiro backup_neon.sql contém a estrutura e os dados necessários para a recuperação.

2. Processo de restauro

O backup pode ser restaurado numa base de dados ou ambiente de teste através de:

psql 'CONNECTION_STRING_TESTE' < backup_neon.sql

O restauro deve ser realizado primeiro num ambiente de teste, evitando alterações acidentais à base de dados de produção.

3. Validação

Depois do restauro devem ser confirmados:

existência das tabelas;
estrutura da base de dados;
dados recuperados;
funcionamento das consultas necessárias ao projeto.
4. Segurança

As connection strings do Neon contêm credenciais de acesso e não devem ser colocadas no GitHub.

As credenciais devem ser mantidas de forma segura e utilizadas apenas no ambiente onde o backup ou restauro é executado.

5. Backup no Neon

Foi também criado um instantâneo (snapshot) da branch production no Neon como mecanismo adicional de recuperação.

6. Objetivo.

O objetivo deste plano é garantir que, perante uma falha ou perda de dados, existe uma cópia dos dados e um procedimento documentado para recuperar o sistema.
