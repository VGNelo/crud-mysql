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

---------------------------------------------

** PYTHON **

 import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sua_senha",
    database="sistema_usuarios"
)

cursor = conn.cursor()

# Create
cursor.execute("INSERT INTO usuarios (nome, email, senha) VALUES (%s, %s, %s)", ("João Silva", "joao@email.com", "senha123"))
conn.commit()

# Read
cursor.execute("SELECT * FROM usuarios")
for (id, nome, email, senha) in cursor.fetchall():
    print(id, nome, email, senha)

# Update
cursor.execute("UPDATE usuarios SET senha = %s WHERE id = %s", ("novaSenha", 1))
conn.commit()

# Delete
cursor.execute("DELETE FROM usuarios WHERE id = %s", (1,))
conn.commit()

cursor.close()
conn.close()

-------------------------------------------------------

** JAVA **

import java.sql.*;

public class CrudUsuarios {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/sistema_usuarios";
        String user = "root";
        String password = "sua_senha";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            Statement stmt = conn.createStatement();

            // Create
            stmt.executeUpdate("INSERT INTO usuarios (nome, email, senha) VALUES ('João Silva', 'joao@email.com', 'senha123')");

            // Read
            ResultSet rs = stmt.executeQuery("SELECT * FROM usuarios");
            while (rs.next()) {
                System.out.println(rs.getInt("id") + " - " + rs.getString("nome") + " - " + rs.getString("email"));
            }

            // Update
            stmt.executeUpdate("UPDATE usuarios SET senha = 'novaSenha' WHERE id = 1");

            // Delete
            stmt.executeUpdate("DELETE FROM usuarios WHERE id = 1");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

---------------------------------------------------

📌 **Autor:** Valdemir Gaspar Nelo  
🔗 [GitHub](https://github.com/VGNelo)  
🔗 [LinkedIn](https://www.linkedin.com/in/valdemirgasparnelo/)  
📷 [Instagram](https://www.instagram.com/seuusuario)



