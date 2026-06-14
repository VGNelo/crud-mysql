CREATE DATABASE sistema_usuarios;
USE sistema_usuarios;

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  senha VARCHAR(100)
);

-----------------------------------------------------------------------------------------------------------------------------

**PYTHON**

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

------------------------------------------------------------------------------------------------------------------------

**JAVA**
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

