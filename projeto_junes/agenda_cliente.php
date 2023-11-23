<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>AGENDAMENTO DO CLIENTE</title>
</head>
<body>

  <h1>AGENDAMENTO DO CLIENTE</h1>
  

  <table class="table">
    <thead>
      <tr>
        <th class="nome" align="center">Nome:</th>
        <th class="email" align="center">email</th>
        <th class="telefone" align="center">telefone</th>
        <th class="data_evento" align="center">data_evento</th>
        <th class="horario_evento" align="center">horario_evento</th>
        <th class="data_retirada" align="center">Data:</th>
        <th class="horario_retirada" align="center">Horário:</th>
        <th class="data_devolucao" align="center">data_devolucao</th>
        <th class="horario_devolucao" align="center">horario_devolucao</th>
        <th class="atendente" align="center">Atendente:</th>
      </tr>
    </thead>
    <tbody>

<?php

include_once('config.php');


// Consulta SQL para selecionar a última linha
$sql = "SELECT *
FROM agendamentos
ORDER BY id DESC
LIMIT 1;";

// Executa a consulta SQL
$result = mysqli_query($conexao, $sql);

// Verifica se a consulta foi bem-sucedida
if ($result) {
  // Itera sobre os resultados da consulta
  while ($row = mysqli_fetch_assoc($result)) {
    // Exibe os dados do agendamento
    echo "<tr class=\"active\">";
    echo "<td>{$row['nome']}</td>";
    echo "<td>{$row['email']}</td>";
    echo "<td>{$row['telefone']}</td>";
    echo "<td>{$row['data_evento']}</td>";
    echo "<td>{$row['horario_evento']}</td>";
    echo "<td>{$row['data_retirada']}</td>";
    echo "<td>{$row['horario_retirada']}</td>";
    echo "<td>{$row['data_devolucao']}</td>";
    echo "<td>{$row['horario_devolucao']}</td>";
    echo "<td>{$row['atendente']}</td>";
    echo "</tr>";
  }
  
  
} else {
  // Erro ao executar a consulta
  echo "Erro ao selecionar registros: " . mysqli_error($conexao);
}

// Fecha a conexão com o banco de dados
mysqli_close($conexao);
?>

    </tbody>
  </table>

</body>
<style>
body{
  background-image: url(logo.pge.webp);
  background-repeat: no-repeat;
  background-size: cover;
  font: 900;
  text-align: center;
}
table {
  width: 100%;
}

th, td {
  padding: 10px;
  border: 1px solid black;
  background-color: #EE82EE;
}

th {
  background-color: #888888;
}

</style>