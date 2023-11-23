<?php
 if(isset($_POST['submit']))
 {
include_once('config.php');

// Recebe os dados do formulário
$nome = $_POST['nome'];
$imagem = file_get_contents($_FILES['imagem']['tmp_name']);

// Insere os dados na tabela SQL
$sql = "INSERT INTO images (nome, conteudo) VALUES ('$nome', '$imagem')";
$result = mysqli_query($conexao, $sql);

if ($result) {
  echo "Imagem inserida com sucesso!";
} else {
  echo "Erro ao inserir imagem: " . mysqli_error($conexao);
}

mysqli_close($conexao);
 }
?>


<form action="images.php" method="post" enctype="multipart/form-data">
  <div class="campos">
    <label for="nome">Nome da imagem</label>
    <input type="text" name="nome" id="nome" required>
  </div>
  <div class="campos">
    <label for="imagem">Imagem</label>
    <input type="file" name="imagem" id="imagem" required>
  </div>
  <input type="submit" value="Enviar">
</form>