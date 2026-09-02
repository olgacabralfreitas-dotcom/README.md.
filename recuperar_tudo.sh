#!/bin/bash

# ============================================================
# PLANO DE DISASTER RECOVERY
# Projeto: Organização de Dados
# Base de dados: PostgreSQL / Neon
# ============================================================

echo "=========================================="
echo " PLANO DE DISASTER RECOVERY"
echo "=========================================="

echo ""
echo "1. BACKUP"
echo "O backup da base de dados é realizado"
echo "através do comando pg_dump:"
echo ""
echo "pg_dump 'CONNECTION_STRING' > backup_neon.sql"
echo ""

echo "2. RESTAURO"
echo "O ficheiro backup_neon.sql pode ser"
echo "restaurado numa base de dados de teste:"
echo ""
echo "psql 'CONNECTION_STRING_TESTE' < backup_neon.sql"
echo ""

echo "3. VALIDAÇÃO"
echo "Após o restauro devem ser verificadas:"
echo "- as tabelas"
echo "- a estrutura da base de dados"
echo "- os dados recuperados"
echo ""

echo "4. SEGURANÇA"
echo "As CONNECTION_STRING não devem ser"
echo "guardadas no GitHub, pois contêm credenciais."
echo "".

echo "=========================================="
echo " PROCESSO DE RECUPERAÇÃO DOCUMENTADO"
echo "=========================================="
