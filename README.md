# CRUD de Usuários com MySQL

Este projeto implementa um CRUD (Create, Read, Update, Delete) básico utilizando **MySQL**.

## Estrutura do Projeto
- **Banco de dados:** `sistema_usuarios`
- **Tabela principal:** `usuarios`
  - `id` (INT, chave primária, auto incremento)
  - `nome` (VARCHAR)
  - `email` (VARCHAR)
  - `senha` (VARCHAR)

## Exemplo completo de uso

```sql
-- Create: inserir usuário
INSERT INTO usuarios (nome, email, senha)
VALUES ('João Silva', 'joao@email.com', 'senha123');

-- Read: consultar usuários
SELECT * FROM usuarios;

-- Update: atualizar usuário
UPDATE usuarios

📌 Autor: Valdemir Gaspar Nelo
🔗 GitHub  
🔗 LinkedIn  
📷 Instagram
SET senha = 'novaSenha'
WHERE id = 1;

-- Delete: excluir usuário
DELETE FROM usuarios
WHERE id = 1;

Pré-requisitos
MySQL instalado (versão 8.0 ou superior)

Cliente SQL (Workbench ou terminal)

Como executar
Abra o MySQL Workbench ou outro cliente SQL.

Crie o banco de dados e a tabela executando o script crud_usuarios.sql.

Execute os comandos SQL acima para realizar as operações de CRUD.

📌 Autor: Valdemir Gaspar Nelo
🔗 GitHub  
🔗 LinkedIn  
📷 Instagram


---
 
