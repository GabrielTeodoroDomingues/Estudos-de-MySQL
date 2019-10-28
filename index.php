<?php
    $host = 'mysql:host=localhost;dbname=escola;port=3307';
    $user = 'root';
    $password = '';

    $db = new PDO($host, $user, $password);

    $query = $db->query('SELECT * from alunos where id='.$_GET['id']);

    $resultado = $query->fetchAll(PDO::FETCH_ASSOC);

    //var_dump($resultado);
?>

<h1> Lista de Alunos </h1>

<ul>
    <?php foreach($resultado as $aluno){?>
    <li> <?php echo $aluno['nome']; ?></li>
    <?php } ?>
</ul>