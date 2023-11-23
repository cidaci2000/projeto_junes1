<?php

include_once('config.php');


  
  // Handle form submission
  if ($_SERVER['REQUEST_METHOD'] == "POST") {
    // Get form data
    $nome = ($_POST['nome']);
    $email = ($_POST['email']);
    $telefone = ($_POST['telefone']);
    $data_evento = ($_POST['data_evento']);
    $horario_evento = ($_POST['horario_evento']);
    $data_retirada = ($_POST['data_retirada']);
    $horario_retirada = ($_POST['horario_retirada']);
    $data_devolucao = ($_POST['data_devolucao']);
    $horario_devolucao = ($_POST['horario_devolucao']);
    $atendente = ($_POST['atendente']);
  
  
    $sql = "INSERT INTO agendamentos (
      nome,
      email,
      telefone,
      data_evento,
      horario_evento,
      data_retirada,
      horario_retirada,
      data_devolucao,
      horario_devolucao,
      atendente
  )
  VALUES (
      '$nome',
      '$email',
      '$telefone',
      '$data_evento',
      '$horario_evento',
      '$data_retirada',
      '$horario_retirada',
      '$data_devolucao',
      '$horario_devolucao',
      '$atendente'
  )";

  
    // Execute the query
    mysqli_query($conexao, $sql) or die("Erro ao executar a consulta: " . mysqli_error($conexao));

  
    // Exibe uma mensagem de sucesso
    echo "Agendamento realizado com sucesso!";
  }

  // Função para formatar data e hora
  function formatarDataHora($data, $horario) {
    return date('d/m/Y H:i', strtotime($data . ' ' . $horario));
  }

  
  ?>



<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Agendamento</title>
</head>
<body>

  <h1>AGENDAMENTO</h1>
  
    <form action="agenda_cliente.php" method="post">
  <fieldset>
        <legend><b>Dados do aluguel</b></legend>
        <div class="inputBox">
          <label for="nome">NOME</label>
          <input type="text" name="nome" id="nome" required>
        </div>
        <div class="inputBox">
          <label for="email">EMAIL</label>
          <input type="text" name="email" id="email" required>
        </div>
        <div class="inputBox">
          <label for="telefone">TELEFONE</label>
          <input type="text" name="telefone" id="telefone" required>
        </div>
        <div class="inputBox">
          <label for="data_evento">Data do evento</label>
          <input type="date" name="data_evento" id="data_evento" required>
        </div>
        <div class="inputBox">
          <label for="horario_evento">Horário do evento</label>
          <input type="time" name="horario_evento" id="horario_evento" required>
        </div>
        <div class="inputBox">
          <label for="data_retirada">Data da retirada</label>
          <input type="date" name="data_retirada" id="data_retirada" required>
        </div>
        <div class="inputBox">
          <label for="horario_retirada">Horário da retirada</label>
          <input type="time" name="horario_retirada" id="horario_retirada" required>
        </div>
        <div class="inputBox">
          <label for="data_devolucao">Data da devolução</label>
          <input type="date" name="data_devolucao" id="data_devolucao" required>
        </div>
        <div class="inputBox">
          <label for="horario_devolucao">Horário da devolução</label>
          <input type="time" name="horario_devolucao" id="horario_devolucao" required>
        </div>
        <div class="inputBox">
          <label for="atendente">NOME ATENDENTE</label>
          <input type="text" name="atendente" id="atendente" required>
        </div>
        </div>
        <input type="submit" value="Enviar">
      </fieldset>
  </form>

</body>
</html>
<style>
body{
  background-image: url(logo.pge.webp);
  background-repeat: no-repeat;
  background-size: cover;
    
  margin-left: 5%;
  margin-right: 50%;
}
a{
 width: 20px;
}
  
  h1 {
    margin-top: 0;
  }
  
  main {
    margin-top: 5px;
  }
  
  fieldset {
   background-color: #778899;
    width: 50%;
  }
  
  legend {
    font-size: 1.2em;
  }
  
  .inputBox {
    margin-bottom: 5px;
  }
  
  input {
    width: 90%;
    padding: 5px;
    border: 1px solid #ccc;
  }
  
  input[type="submit"] {
    background-color: #000;
    color: #fff;
    padding: 5px;
    border: none;
    cursor: pointer;
   
  }

</style>