# Histórico de Decisões

## Objetivo do projeto

Este projeto foi desenvolvido para organizar, gerir e consultar dados de uma organização de forma mais eficiente e segura.

## Principais decisões

### Estrutura da base de dados
Foram criadas tabelas para organizar os diferentes tipos de informação e estabelecer relações entre os dados.

### Views
Foram criadas Views para facilitar a consulta dos dados e apresentar a informação de forma mais simples.

### Índices
Foram utilizados índices para melhorar o desempenho das consultas à base de dados.

### Segurança
Foram definidos mecanismos de controlo de acesso para limitar as operações realizadas pelos utilizadores.

### Recuperação
Foi preparado um mecanismo de recuperação para permitir reconstruir o sistema em caso de falha.

## Versão final

A versão apresentada corresponde à versão 1.0 do projeto.

Decisão — Plano de Disaster Recovery
Objetivo

Foi definido um plano de Disaster Recovery para garantir a recuperação da base de dados PostgreSQL alojada no Neon em caso de falha ou perda de dados.

Extração do backup

A extração dos dados é realizada através da ferramenta pg_dump, que permite criar uma cópia da estrutura e dos dados da base de dados.

O comando utilizado é:

pg_dump 'CONNECTION_STRING' > backup_neon.sql

O ficheiro backup_neon.sql é guardado localmente e constitui uma cópia de segurança da base de dados.

Processo de restauro

Em caso de necessidade, o backup pode ser restaurado numa base de dados de teste através do comando:

psql 'CONNECTION_STRING_TESTE' < backup_neon.sql

O restauro deve ser realizado preferencialmente num ambiente de teste, antes de qualquer intervenção na base de dados de produção.

Validação após o restauro

Após a recuperação devem ser verificadas:

existência das tabelas;
estrutura da base de dados;
dados recuperados;
funcionamento das consultas necessárias ao projeto.
Segurança

As connection strings utilizadas para acesso ao Neon contêm credenciais e não devem ser armazenadas no GitHub.

O ficheiro de backup backup_neon.sql também não deve ser publicado no repositório, devendo ser mantido num local seguro.

Backup adicional no Neon

Foi também criado um snapshot da branch production no Neon, como mecanismo adicional de recuperação.

Decisão

A combinação de pg_dump, procedimento documentado de restauro e snapshot do Neon proporciona uma estratégia de recuperação que permite reduzir o risco de perda de dados e recuperar o sistema de forma controlada.
