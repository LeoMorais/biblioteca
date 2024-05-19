<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Biblioteca</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    color: #444;
}

hr {
    border: 0;
    height: 1px;
    background: #ddd;
    margin: 20px 0;
}

button {
    background-color: #5cb85c;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 10px 2px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #4cae4c;
}

a {
    text-decoration: none;
}

a button {
    display: inline-block;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-size: 18px;
}

table th, table td {
    padding: 12px 15px;
    border: 1px solid #ddd;
    text-align: left;
}

table th {
    background-color: #f2f2f2;
}

table tr:nth-of-type(even) {
    background-color: #f9f9f9;
}

table tr:hover {
    background-color: #f1f1f1;
}

table a {
    color: #5cb85c;
    text-decoration: none;
}

table a:hover {
    text-decoration: underline;
}

form {
    display: inline;
}

input[type="submit"] {
    background-color: #d9534f;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #c9302c;
}
</style>
    <div>
        <div>
            <h2>Biblioteca</h2>
            <hr/>
            <a href="/biblioteca/cadastrar">
                <button type="submit">Cadastrar novo</button>
            </a>
            <a href="/biblioteca/livros"><br>
                <button type="submit">Listar</button>
            </a>
            <br/><br/>
            <div>
                <div>
                    <div>Biblioteca</div>
                </div>
                <div>
                    <table border=1 frame=hsides rules=rows>
                        <tr>
                            <th>Id</th>
                            <th>Titulo</th>
                            <th>Editora</th>
                            <th>Ano</th>
                        </tr>
                        <c:forEach var="livro" items="${livros}">
                            <tr>
                                <td>${livro.id}></td>
                                <td>${livro.titulo}</td>
                                <td>${livro.editora}</td>
                                <td>${livro.ano}</td>
                                <td>
                                    <a href="/biblioteca/${livro.id}">Editar</a>
                                    <form action="/biblioteca/${livro.id}/delete" method="post">
                                        <input type="submit" value="Excluir" />
                                    </form>
                                </td> 
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>