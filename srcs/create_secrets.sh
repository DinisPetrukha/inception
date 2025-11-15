#!/bin/bash

# --- 1. DEFINIR VALORES ---
# Altera estes valores para as tuas credenciais finais!

# Credenciais da Base de Dados
DB_NAME_VAL="wp_inception_db"
DB_USER_VAL="dpetrukh_user"
DB_PASSWORD_VAL="SenhaSeguraParaDB"
DB_ROOT_PASSWORD_VAL="SenhaRootDBForte"

# Credenciais do Administrador WordPress
WP_ADMIN_USER_VAL="dpetrukh"
WP_ADMIN_PASSWORD_VAL="SenhaAdminWPForte"
WP_ADMIN_EMAIL_VAL="dpetrukh@42.fr"

# Credenciais de Utilizador Normal WordPress
WP_USER_VAL="guest42"
WP_USER_PASSWORD_VAL="SenhaNormalWP"

# --- 2. CRIAR ESTRUTURA E PASTA SECRETS ---
SECRETS_DIR="./secrets"

# echo "A criar a pasta de segredos em: $SECRETS_DIR"
# mkdir -p "$SECRETS_DIR"

# --- 3. CRIAR OS FICHEIROS SECRETS ---

echo "$DB_NAME_VAL"         > "$SECRETS_DIR/dbName.txt"
echo "$DB_USER_VAL"         > "$SECRETS_DIR/dbUser.txt"
echo "$DB_PASSWORD_VAL"     > "$SECRETS_DIR/dbPassword.txt"
echo "$DB_ROOT_PASSWORD_VAL" > "$SECRETS_DIR/dbRootPassword.txt"
echo "$WP_ADMIN_USER_VAL"   > "$SECRETS_DIR/wpAdminUser.txt"
echo "$WP_ADMIN_PASSWORD_VAL" > "$SECRETS_DIR/wpAdminPassword.txt"
echo "$WP_ADMIN_EMAIL_VAL"  > "$SECRETS_DIR/wpAdminEmail.txt"
echo "$WP_USER_VAL"         > "$SECRETS_DIR/wpUser.txt"
echo "$WP_USER_PASSWORD_VAL" > "$SECRETS_DIR/wpUserPassword.txt"

echo "✅ Todos os 9 secrets foram atualizados com sucesso!"