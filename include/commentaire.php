<?php

class Comm{
    public $id_commentaire;
    public $auteur_commentaire;
    public $commentaire;
    public $date_commentaire;
    
    function CreateCom() {
              
        // construction de la requête :nom, :prenom sont les valeurs à insérées
        $sql = 'INSERT INTO commentaire (auteur_commentaire, commentaire, date_commentaire) 
                VALUES (:auteur_commentaire, :commentaire, NOW(:date_commentaire));';
       
        // connexion à la base de données
        $pdo = connexion();
       
        // préparation de la requête
        $query = $pdo->prepare($sql);
       
        // on donne une valeur aux paramètres à partir des attributs de l'objet courant
        $query->bindValue(':auteur_commentaire', $this->auteur_commentaire, PDO::PARAM_STR);
        $query->bindValue(':commentaire', $this->commentaire, PDO::PARAM_STR);
        $query->bindValue(':date_commentaire', $this->date_commentaire, PDO::PARAM_STR);
       
        // exécution de la requête
        $query->execute();
       
        // on récupère la clé techno inséré
        $this->id_commentaire = $pdo->lastInsertId();
        }

    function lirePost(){
        $this->auteur_commentaire =$_POST["auteur_commentaire"];
        $this->commentaire =$_POST["commentaire"];
        $this->date_commentaire =$_POST["date_commentaire"];
    }
}
  ?>