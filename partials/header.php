<?php
require_once './config/connexion.php';

$preparedRequest =  $connexion->prepare(
    "SELECT * FROM message 
    JOIN user
        ON user.id = message.user_id
    ORDER BY message.create_at ASC
    "
);
$preparedRequest->execute();
$messages = $preparedRequest->fetchAll(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Mini-Chat</title>
</head>

<body>
    <header>
        <div id="cc">


            <div class="card mb-5 w100%">
                <div class="card-body">



                    <div class="bg-red">

                        <div class="d-flex justify-content-center">
                            <nav class="navbar navbar-expand-lg bg-silver">
                                <div class="container-fluid">
                                    <a class="navbar-brand" href="#">
                                        <img src="https://img.phonandroid.com/2022/03/Dox.jpg" alt="Logo" width="100" height="50" class="d-inline-block align-text-top">
                                        Return Chat
                                    </a>
                                </div>
                            </nav>

                        </div>
                        <div class="row">
                            <div class="card m-5" style="width:50%">
                                <img src="https://www.radiofrance.fr/s3/cruiser-production/2019/07/42b1a30f-dbc3-4098-8edf-43d32d658906/1200x680_retour_vers_le_futur.jpg" alt="...">
                                <?php foreach ($messages as $key => $message) { ?>
                                    <p class="<?= $message['pseudo'] === 'Romain' ? 'text-end' : 'text-start' ?> <?= $key % 2 ? 'text-info' : 'text-warning' ?>">
                                        <b><?= $message['pseudo'] ?> : </b>
                                        <?= $message['content'] ?>
                                    </p>
                                <?php } ?>
                            </div>
                        </div>


                        <section class="row">

                            <form action="./process/process_add_user_message.php" method="post" class="d-flex align-items-center">
                                <div class="m-3 w-25">
                                    <input type="text" class="form-control" placeholder="pseudo" id="pseudo" name="pseudo">
                                </div>
                                <div class="m-3 w-50">
                                    <input type="text" class="form-control" placeholder="message" id="message" name="message">
                                </div>
                                <input type="hidden" name="adress_ip" value="<?= $_SERVER['REMOTE_ADDR'] ?>">
                                <button type="submit" class="m-3 btn btn-danger">Envoyer</button>
                            </form>


                        </section>








    </header>