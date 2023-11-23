<?php

    if(isset($_POST['submit']))
    {
      

        include_once('config.php');

        $nome = $_POST['nome'];
        $preco = $_POST['preco'];
        $quantidade = $_POST['quantidade'];
        $cor = $_POST['cor'];
        $categoria = $_POST['categoria'];
        

        $result = mysqli_query($conexao, "INSERT INTO produtos(nome,preco,quantidade,cor,categoria) 
        VALUES ('$nome','$preco','$quantidade','$cor','$categoria')");

        header('Location: adm.php');
    }

?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário | GN</title>
    
</head>
<body>
    <a href="../adm.php"><img src="../imagem/logo.png" alt=""></a>
    <div class="box">
        <form action="produtos.php" method="POST">
            <fieldset>
                <legend><b>Fórmulário de funcionario</b></legend>
                <br>
                <div class="inputBox">
                    <input type="text" name="nome" id="nome" class="inputUser" required>
                    <label for="nome" class="labelInput">PRODUTO</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="preco" id="preco" class="inputUser" required>
                    <label for="senha" class="labelInput">PREÇO</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="quantidade" id="quantidade" class="inputUser" required>
                    <label for="quantidade" class="labelInput">QUANTIDADE</label>
                </div>
                <br>
                <div class="inputBox">
                    <input type="text" name="cor" id="cor" class="inputUser" required>
                    <label for="cor" class="labelInput">COR</label>
                </div>
                <p>categoria:</p>
                <input type="radio" id="feminino" name="categoria" value="feminino" required>
                <label for="feminino">FEMININO</label>
                <br>
                <input type="radio" id="masculino" name="categoria" value="masculino" required>
                <label for="masculino">MASCULINO</label>
                <br>
                <input type="radio" id="outro" name="categoria" value="outro" required>
                <label for="outro">Outro</label>
                <br>
                <br>
                <input type="submit" name="submit" id="submit">
            </fieldset>
        </form>
    </div>
</body>
</html>
<style>
        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image: url(terno.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .box{
            color: white;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color: #191970;
            padding: 5px;
            border-radius: 15px;
            width: 30%;
        }
        fieldset{
            border: 3px solid #000000;
            height: 50%;
        }
        legend{
            border: 1px solid #191970;
            padding: 10px;
            text-align: center;
            background-color: #191970;
            border-radius: 8px;
        }
        .inputBox{
            position: relative;
        }
        .inputUser{
            background: none;
            border: none;
            border-bottom: 1px solid white;
            outline: none;
            color: white;
            font-size: 15px;
            width: 100%;
            letter-spacing: 2px;
        }
        .labelInput{
            position: absolute;
            top: 0px;
            left: 0px;
            pointer-events: none;
            transition: .5s;
        }
        .inputUser:focus ~ .labelInput,
        .inputUser:valid ~ .labelInput{
            top: -20px;
            font-size: 12px;
            color: #B25B6E;
        }
        #data_nascimento{
            border: none;
            padding: 8px;
            border-radius: 10px;
            outline: none;
            font-size: 15px;
        }
        #submit{
            background-image: linear-gradient(to right,rgb(0, 92, 197), rgb(90, 20, 220));
            width: 100%;
            border: none;
            padding: 15px;
            color: white;
            font-size: 15px;
            cursor: pointer;
            border-radius: 10px;
        }
        #submit:hover{
            background-image: #7c3042;
        }
    </style>
