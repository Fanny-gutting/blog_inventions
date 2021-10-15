<?php
// on inclut le fichier de configuration
include_once(file_exists('config.php')? 'config.php' : 'config.git.php');
 
function connexion() {
  // indique qu'on utilise la variable globale $config, définie dans le fichier 'config.php'
  // (sinon $config serait une variable locale uniquement définie dans cette fonction et donc vide)
  global $config;
 
  // connexion en utilisant les informations stockées dans la variable $config
  $pdo = new PDO($config['driver'].':host='.$config['serveur'].';dbname='.$config['base'].';charset=utf8',
    $config['utilisateur'],
    $config['mdp']);
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
 
  // test de la variable PDO et renvoi de sa valeur
  if ($pdo) {
    return $pdo;
  } else {
    echo '<p>Connexion impossible !</p>';
    exit; // arrêt des scripts PHP
  }
}
?>